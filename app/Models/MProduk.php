<?php
namespace App\Models;

use CodeIgniter\Model;
	
class MProduk extends Model
{
	protected $table = 'kamar';
	protected $primaryKey = 'id_kamar';
	protected $allowedFields = ['no_kamar', 'harga_kamar', 'fasilitas_kamar'];





	public function getProduct2()
    {
		return $this->db->query("select a.*,b.nama_kamar_gambar from kamar a

			left join kamar_gambar b on a.id_kamar=b.id_kamar 

			group by id_kamar

			");

    }

}
