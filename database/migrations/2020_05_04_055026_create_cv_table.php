<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCvTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cv', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $tables = ['cv_id','users','experience','education','projects','skills','extraskills','tools','extratools','courses','extrainformations','consent','aboutme','job','personaldata'];
            foreach($tables as $value){
                if($value == 'extraskills' || $value == 'extratools') $table->boolean($value);
                $table->unsignedBigInteger($value . '_id');
            }
            foreach($tables as $value){
                if($value != 'extraskills' && $value != 'extratools' && $value != 'cv_id') $table->foreign($value. '_id')->references('id')->on($value);
            }

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cv');
    }
}
