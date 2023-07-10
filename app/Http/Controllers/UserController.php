<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function store(){
        // $user = new User;
        // $user->name = "Ade Nur Khafi Riski";
        // $user->email = "adenkr16@gmail.com";
        // $user->password = bcrypt("123456");
        // $user->save();
        $user = new User;
        $user->name = "Ivander Josh Santoso";
        $user->email = "navivan3112@gmail.com";
        $user->password = bcrypt("123456");
        $user->save();
    }
}