<?php

use Illuminate\Database\Seeder;

class ProjectsSeeder extends Seeder
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

        foreach($programista_php['projekty'] as $value){
            $project[] = $value;
        }
        krsort($project);
        
        for($i=count($project)-1;$i>=0;$i--){
            DB::table('projects')->insert([
            
                'user_id' => 1,
                'string' => $project[$i],
                
                'status' => 1,
            
            ]);
        }
    }
}
