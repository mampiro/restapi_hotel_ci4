<?php 
namespace App\Models;
use Codeigniter\Model;

class MLogin extends Model{
    protected $table = 'member_token';
    protected $allowedFields = ['id_pendaftar','auth_key'];
}
