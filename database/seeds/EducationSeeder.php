<?php

use Illuminate\Database\Seeder;

class EducationSeeder extends Seeder
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
        $i=0;
        foreach($programista_php['edukacja'] as $value){
            $trimmed[] = trim($value,'<p>');
            $exploded[] = explode(';',$trimmed[$i]);
            $i++;
                
        }
        for($i=count($exploded)-1;$i>=0;$i--){
            DB::table('education')->insert([
            
                'user_id' => 1,
                'data' => $exploded[$i][0],
                'school' => $exploded[$i][1],
                'profession' => $exploded[$i][2],
                'status' => 1,
            
            ]);
        }
    }
}
