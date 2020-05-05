<?php

use Illuminate\Database\Seeder;




class usersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        include 'baza.php';
        DB::table('users')->insert([
            'login' => $user['login'],
            'name' => $user['name'],
            'email' => $user['email'],
            'password' => $user['password'],
        ]);
    }
}
  