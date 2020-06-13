<?php

namespace src\controllers;

use \core\Controller;
use \src\handlers\LoginHandler;
use \src\handlers\PostHandler;

class ProfileController extends Controller
{
    private $loggedUser;

    public function __construct()
    {
        $this->loggedUser = LoginHandler::checkLogin();

        if ($this->loggedUser === false) {
            $this->redirect('/login');
        }
    }

    public function index($atributo = [])
    {
        $id = $this->loggedUser->id;

        if (!empty($atributo['id'])) {
            $id = $atributo['id'];
        }        
        
        $this->render('profile',[
            'loggedUser' => $this->loggedUser
        ]);
    }
}
