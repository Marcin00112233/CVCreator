<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HomeModel;

class HomeController extends Controller
{
   public function show(){ 
          
       return view('HomeView');
   }
}
