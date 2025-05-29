<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('New Product') }}
        </h2>
    </x-slot>



    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 py-12">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-6">
            <form method="POST" action="{{ route('product.new') }}" enctype="multipart/form-data" class="grid grid-cols-3 gap-4">
                @csrf

                <input type="hidden" name="hidden" value="0">

                <div>
                    <x-input-label for="gtin" :value="__('gtin')" />
                    <x-text-input id="gtin" class="block mt-1 w-full" type="text" name="gtin"
                        :value="old('gtin')" required autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('gtin')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="brand" :value="__('brand')" />
                    <x-text-input id="brand" class="block mt-1 w-full" type="text" name="brand"
                        :value="old('brand')" required autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('brand')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="country" :value="__('country')" />
                    <x-text-input id="country" class="block mt-1 w-full" type="text" name="country"
                        :value="old('country')" required autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('country')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="gross" :value="__('weight_gross')" />
                    <x-text-input id="gross" class="block mt-1 w-full" type="text" name="gross"
                        :value="old('gross')" required autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('gross')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="net" :value="__('weight_net')" />
                    <x-text-input id="net" class="block mt-1 w-full" type="text" name="net"
                        :value="old('net')" required autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('net')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="unit" :value="__('weight_unit')" />
                    <x-text-input id="unit" class="block mt-1 w-full" type="text" name="unit"
                        :value="old('unit')" required autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('unit')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="en_name" :value="__('en_name')" />
                    <x-text-input id="en_name" class="block mt-1 w-full" type="text" name="en_name"
                        :value="old('en_name')" required autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('en_name')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="en_desc" :value="__('en_desc')" />
                    <x-text-input id="en_desc" class="block mt-1 w-full" type="text" name="en_desc"
                        :value="old('en_desc')" required autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('en_desc')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="fr_name" :value="__('fr_name')" />
                    <x-text-input id="fr_name" class="block mt-1 w-full" type="text" name="fr_name"
                        :value="old('fr_name')" required autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('fr_name')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="fr_desc" :value="__('fr_desc')" />
                    <x-text-input id="fr_desc" class="block mt-1 w-full" type="text" name="fr_desc"
                        :value="old('fr_desc')" required autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('fr_desc')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="image" :value="__('image')" />
                    <x-text-input id="image" class="block mt-1 w-full" type="file" accept="image/*" name="image"
                        :value="old('image')" autofocus autocomplete="username" />
                    <x-input-error :messages="$errors->get('image')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="company_id" :value="__('company_id')" />
                    <select name="company_id" id="company_id">
                        @foreach ($comp as $item)
                            <option value="{{$item['id']}}">{{$item['company_name']}}</option>
                        @endforeach
                    </select>
                    <x-input-error :messages="$errors->get('company_id')" class="mt-2" />
                </div>



                <div class="flex items-center justify-end mt-4">
                    <x-primary-button class="ms-3">
                        {{ __('Create New Product') }}
                    </x-primary-button>
                </div>
            </form>
        </div>
    </div>


</x-app-layout>
