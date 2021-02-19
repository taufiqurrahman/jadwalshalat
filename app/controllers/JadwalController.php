<?php
declare(strict_types=1);

class JadwalController extends \Phalcon\Mvc\Controller
{
    public function indexAction()
    {
        $query = $this
            ->modelsManager
            ->createQuery(
                'SELECT * FROM Jadwalshalat'
            )
        ;

        $jadwal = $query->execute();

       $this->view->setVar('jadwals', $jadwal);
    }

    public function addAction()
    {
        $this->view->pick("jadwal/add");
    }

    public function editAction($id)
    {
        $conditions = ['id'=>$id];

        $jadwal = Jadwalshalat::findFirst([
            'conditions' => 'id=:id:',
            'bind' => $conditions,
        ]);

        if(!$jadwal){
            $this->flashSession->error(" Jadwal shalat tidak ditemukan.");
            return $this->response->redirect('jadwal/');
        }

        $this->view->pick("jadwal/edit");
        $this->view->setVars(
            [
                "jadwal" => $jadwal,
            ]
        );
    }

    public function deleteAction($id)
    {
        $conditions = ['id'=>$id];

        $jadwal = Jadwalshalat::findFirst([
            'conditions' => 'id=:id:',
            'bind' => $conditions,
        ]);

        if($jadwal){
            if ($jadwal->delete()) {
                $this->flashSession->success(" Jadwal shalat berhasil dihapus.");
            }
        }else{
            $this->flashSession->error(" Jadwal shalat tidak ditemukan.");
        }
        
        return $this->response->redirect('jadwal/');
    }

    public function saveAction($id = null)
    {
        $tanggal = $this->request->get('tanggal');
        $subuh = $this->request->get('subuh');
        $zuhur = $this->request->get('zuhur');
        $ashar = $this->request->get('ashar');
        $magrib = $this->request->get('magrib');
        $isya = $this->request->get('isya');

        $conditions = ['id'=>$id];

        if($id){
            $jadwal = Jadwalshalat::findFirst([
                'conditions' => 'id=:id:',
                'bind' => $conditions,
            ]);
            if(!$jadwal){
                $this->flashSession->error(" Jadwal shalat tidak ditemukan.");
            }
        }else{
            $jadwal = new Jadwalshalat();
        }

        $jadwal->tanggal = $tanggal;
        $jadwal->subuh = $subuh;
        $jadwal->zuhur = $zuhur;
        $jadwal->ashar = $ashar;
        $jadwal->magrib = $magrib;
        $jadwal->isya = $isya;

        if ($jadwal->save()) {
            $this->flashSession->success(" Jadwal shalat berhasil simpan.");

            return $this->response->redirect('jadwal/');
        } 
    }

}

