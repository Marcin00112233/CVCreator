<?php

use Illuminate\Database\Seeder;

class ExperienceSeeder extends Seeder
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
        foreach($programista_php['doswiadczenie'] as $value){
            $trimmed[] = trim($value,'<p>');
            $exploded[] = explode(';',$trimmed[$i]);
            $i++;
                
        }
        for($i=count($exploded)-1;$i>=0;$i--){
            DB::table('experience')->insert([
            
                'user_id' => 1,
                'date' => $exploded[$i][0],
                'date' => $exploded[$i][0],
                'companyname' => $exploded[$i][1],
                'job' => $exploded[$i][2],
                'termsofreference' => $exploded[$i][3],
                'status' => 1,
            
            ]);
        }
    }
}
