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
            $tables = ['users','experience','education','projects','skills','extraskills','tools','courses','extrainformations','consent','aboutme','job','personaldata'];
            foreach($tables as $value){
                $table->unsignedBigInteger($value . '_id');
            }
            foreach($tables as $value){
                $table->foreign($value. '_id')->references('id')->on($value);
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
