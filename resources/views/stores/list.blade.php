<x-app-layout>
    @slot('title', 'List Store')
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('List Store') }}
        </h2>
    </x-slot>

    <x-container>
        <div class="grid grid-cols-4 gap-6">
            @foreach ($stores as $store)
            <x-stores.item :$isAdmin :$store/>
            @endforeach
        </div>
       <div class="mt-8">
        {{ $stores->links() }}
       </div>
    </x-container>
</x-app-layout>
