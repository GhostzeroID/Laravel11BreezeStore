<?php

namespace App\Http\Controllers;

use App\Enums\StoreStatus;
use App\Mail\StorePublished;
use App\Models\Store;
use Illuminate\Http\Request;
use App\Http\Requests\StoreRequest;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;

class StoreController extends Controller
{
    public function list() 
    {

        $stores = Store::query()
            ->with('user:id,name')
            ->withCount('products')
            ->latest()
            ->paginate(8);
        return view('stores.list', [
            'stores' => $stores,
            'isAdmin' => auth()->user()->isAdmin(),
        ]);
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $stores = Store::query()
            ->where('status', StoreStatus::ACTIVE)
            ->latest()
            ->get();

        return view('stores.index', [
            'stores' => $stores,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('stores.form', [
            'store' => new Store(),
            'page_meta' => [
                'title' => 'Create Store',
                'description' => 'Create a new store',
                'method' => 'post',
                'url' => route('stores.store'),
            ]
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreRequest $request)
    {
        $file = $request->file('logo');
        $request->user()->stores()->create([
            ...$request->validated(),
            ...['logo' => $file->store('images/stores')],
        ]);

        return to_route('stores.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Store $store)
    {
        return view('stores.show', [
            'store' => $store->loadCount('products'),
            'products' =>$store->products()->latest()->paginate(12),
        ]);
    }

    public function approve(Store $store)
    {
        $store->status =  StoreStatus::ACTIVE;
        $store->save();

        Mail::to($store->user)->send(new StorePublished($store));

        return back();
    }

    public function mine(Request $request)
    {
        $stores = Store::query()
            ->where('user_id', $request->user()->id)
            ->latest()
            ->paginate(8);
        return view('stores.mine', [
            'stores' => $stores,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request, Store $store)
    {
        Gate::authorize('update', $store);

        return view('stores.form', [
            'store' => $store,
            'page_meta' => [
                'title' => 'Edit Store',
                'description' => 'Edit Store : ', $store->name,
                'method' => 'PUT',
                'url' => route('stores.update', $store),
            ]
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreRequest $request, Store $store)
    {
        if ($request->hasFile('logo')) {
            Storage::delete($store->logo);
            $file = $request->file('logo')->store('images/stores');
        } else {
            $file = $store->logo;
        }
        $store->update([
            'name' => $request->name,
            'description' => $request->description,
            'logo' => $file,
        ]);

        return to_route('stores.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Store $store)
    {
        //
    }
}
