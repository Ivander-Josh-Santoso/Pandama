<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('alternatives', function (Blueprint $table) {
            $table->id();
            $table->string('id_wisma');
            $table->char('alternative');
            $table->string('nama_wisma');
            $table->integer('harga');
            $table->integer('luas_parkir');
            $table->integer('luas_kamar');
            $table->integer('jumlah_kasur');
            $table->integer('kamar_mandi');
            $table->integer('daya_tampung_tamu');
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
        Schema::dropIfExists('alternatives');
    }
};
