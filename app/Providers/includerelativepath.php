<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class includerelativepath extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        Blade::directive('includerelativepath', function ($path_relative) {
            
           /*
           //$view_file_root = './component/';
            //$full_path = $view_file_root . $path_relative;
            //return view::make($full_path)->render(); */
            
        });
    }
}
