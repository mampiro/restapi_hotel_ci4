<?php

namespace App\Controllers;

use App\Models\Mregistrasi;

class RegistrasiController extends RestfulController
{
    public function registrasi()
    {
        $data = [
            'nama' => $this->request->getVar('nama'),
            'email' => $this->request->getVar('email'),
            'password' => md5($this->request->getVar('password')),
            'no_hp' => $this->request->getVar('no_hp'),
            'ktp' => $this->request->getVar('ktp'),
            'alamat' => $this->request->getVar('alamat'),
        ];

        $model = new Mregistrasi();

        $model->save($data);

        return $this->responseHasil(200, true, "Registrasi Berhasil");
    }
}
