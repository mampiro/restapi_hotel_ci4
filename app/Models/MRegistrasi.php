<?php

namespace App\Models;

use CodeIgniter\Model;

class MRegistrasi extends Model
{
    protected $table = 'pendaftar';
    protected $allowedFields = ['nama', 'email', 'password', 'no_hp', 'ktp', 'alamat'];
}
