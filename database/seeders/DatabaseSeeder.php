<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Category;
use App\Models\House;
use App\Models\Post;
use App\Models\User;
use App\Models\Admin;
use App\Models\Role;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        
        Role::create([
            'role' => 'admin'
        ]);

        Role::create([
            'role' => 'user'
        ]);

        User::factory(4)->create();
        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        User::create([
            'name' => 'Ivander Josh Santoso',
            'role_id' => '1',
            'username' => 'ivan',
            'jk' => true,
            'tanggal_lahir' => '2002-12-31',
            'alamat' => 'Tegal',
            'no_hp' => '087803112002',
            'email' => 'navivan3112@gmail.com',
            'password' => bcrypt('password'),
        ]);

        Category::create([
            'name' => 'Property',
            'slug' => 'property'
        ]);

        Category::create([
            'name' => 'House',
            'slug' => 'house'
        ]);

        Category::create([
            'name' => 'Apartment',
            'slug' => 'apartment'
        ]);

        Category::create([
            'name' => 'Hotel',
            'slug' => 'hotel'
        ]);

        Category::create([
            'name' => 'Furniture',
            'slug' => 'furniture'
        ]);

        Category::create([
            'name' => 'Interior',
            'slug' => 'interior'
        ]);

        Post::factory(20)->create();

        House::factory(100)->create();
        
    }
}
