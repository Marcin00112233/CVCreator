<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExtrainformationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('extrainformations', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->integer('user_id');
            $table->text('information');
            $table->boolean('status');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('extrainformations');
    }
}
