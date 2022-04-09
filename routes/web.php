<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {

    return view('welcome');
});


Route::get('/cache', function () {

    Artisan::call('cache:clear');
    Artisan::call('config:cache');
dd("Cache Configured !!");
});


Route::get('/key', function () {


    Artisan::call('key:generate');
    dd("Application Key Generated !!");


});


Route::get('/search', 'GenericController@search')->name('search');
Route::get('/drink/{id}', 'GenericController@drink')->name('drink');

