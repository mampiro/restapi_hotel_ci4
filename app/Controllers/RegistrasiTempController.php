<?php

namespace App\Controllers;

use App\Models\Mregistrasitemp;

class RegistrasiTempController extends RestfulController
{
    public function registrasitemp()
    {


        $StartDate=explode(" ", $this->request->getVar('tgl_reservasi_masuk'));
        
        $StartDate1=explode("-",$StartDate[0]);
        $StartDate2=$StartDate1[2]."-".$StartDate1[1]."-".$StartDate1[0];
        
        $Start_Date=$StartDate2." ".$StartDate[1];


        $EndDate=explode(" ", $this->request->getVar('tgl_reservasi_keluar'));
        
        $EndDate1=explode("-",$EndDate[0]);
        $EndDate2=$EndDate1[2]."-".$EndDate1[1]."-".$EndDate1[0];
        
        $End_Date=$EndDate2." ".$EndDate[1];



        $data = [
            'id_kamar' => $this->request->getVar('id_kamar'),
            'tgl_reservasi_masuk' => $Start_Date,
            'tgl_reservasi_keluar' => $End_Date,
            'id_pendaftar' => $this->request->getVar('id_pendaftar'),
        ];

        $model = new Mregistrasitemp();

        $model->save($data);

        return $this->responseHasil(200, true, "Booking Berhasil");
    }
}
