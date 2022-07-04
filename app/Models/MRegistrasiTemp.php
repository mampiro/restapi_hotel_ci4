<?php

namespace App\Models;

use CodeIgniter\Model;

class MRegistrasiTemp extends Model
{
    protected $table = 'temp_reservasi';
    protected $allowedFields = ['id_kamar', 'tgl_reservasi_masuk', 'tgl_reservasi_keluar', 'id_pendaftar'];
}
