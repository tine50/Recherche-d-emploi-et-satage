<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEntreprisesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('entreprises', function (Blueprint $table) {
            $table->id();
            $table->string('titre');
            $table->string('sous_titre');
            $table->text('corps');
            $table->string('slug')->nullable();
            $table->unsignedBigInteger('type_contrats_id');
            $table->foreign('type_contrats_id')->references('id')->on('type_contrats');
            $table->string('secteur_activite');
            $table->unsignedBigInteger('type_entreprises_id');
            $table->foreign('type_entreprises_id')->references('id')->on('type_entreprises');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('entreprises');
    }
}
