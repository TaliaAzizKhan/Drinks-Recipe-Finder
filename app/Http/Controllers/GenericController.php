<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Drinks;
use App\Ingredients;


class GenericController extends Controller
{
    public function search(Request $request){

        $drinks = Drinks::orderBy('name', 'asc')->where('name', 'like', '%' . $request->search . '%')->orWhere('ingredients',  'like', '%' . $request->search . '%')->get();

        $count = $drinks->count();
        $keyword = $request->search;

        return view('search', compact('drinks', 'keyword', 'count'));


    }

    public function drink($id){

        $drink = Drinks::find($id);
        return view('drink', compact('drink'));

    }
}
