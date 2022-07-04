<?php

namespace App\Controllers;

use App\Models\MLogin;
use App\Models\MMember;

class LoginController extends RestfulController
{
    public function login()
    {
        $email = $this->request->getVar('email');
        $password = md5($this->request->getVar('password'));

        $model = new MMember();

        $member = $model->where(['email' => $email])->first();

        if (!$member) 
        {
            return $this->responseHasil(400, false, "Email Tidak Ditemukan");
        }
        if ( $password!=$member['password']) 
        {
            return $this->responseHasil(400, false, "Password Tidak Valid ");
        }
        $login = new MLogin();
        $auth_key = $this->RandomString();


        $data2 = [
            'id_pendaftar' => $member['id_pendaftar'],
           'auth_key' => $auth_key,
           
        ];


        $login->save($data2);


        $data = [
            'token' => $auth_key,
            'user' => [
            'id' => $member['id_pendaftar'],
            'email' => $member['email']
            ]
        ];
        return $this->responseHasil(200, true, $data);
    }

    private function RandomString($length = 100)
    {
        $karakter = '012345678dssd9abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $panjang_karakter = strlen($karakter);
        $str = '';

        for ($i = 0; $i < $length; $i++) {
            $str .= $karakter[rand(0, $panjang_karakter - 1)];
        }
        return $str;
    }
}
