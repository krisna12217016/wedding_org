<?php

namespace App\Controllers;

use CodeIgniter\Database\Query;

class Gawe extends BaseController
{
    public function index()
    {
        $builder = $this->db->table('gawe');
        $query   = $builder->get()->getResult();
        $data['gawe'] = $query;
        return view('gawe/get' , $data);
    }
    
    public function create()
    {
        return view('gawe/add');
    }

    public function store()
    {
        $data = $this->request->getPost();

        $this->db->table('gawe')->insert($data);

        if($this->db->affectedRows() > 0) {
            return redirect()->to(site_url('gawe'))->with('success', 'Data Berhasil Disimpan');
        }
    }
}
