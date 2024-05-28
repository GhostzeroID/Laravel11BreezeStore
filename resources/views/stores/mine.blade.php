<x-app-layout>
    @slot('title', 'My Store')
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('My Store') }}
        </h2>
    </x-slot>

    <x-container>
        <div class="grid grid-cols-4 gap-6">
            @if ($stores->count())
                @foreach ($stores as $store)
                <x-stores.item :$store/>
                @endforeach
            @else
                <p class="text-gray-800">
                    You haven't made any store yet.
                </p>
            @endif
        </div>
    </x-container>
</x-app-layout>
