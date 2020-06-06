<?php

namespace src\handlers;

use \src\models\User;

class LoginHandler
{

    public static function checkLogin(Type $var = null)
    {
        if (!empty($_SESSION['token'])) {
            $token = $_SESSION['token'];

            $data = User::select()->where('token', $token)->one();

            if (count($data) > 0) {
                $loggedUser = new User();

                $loggedUser->setId($data['id']);
                $loggedUser->setName($data['name']);
                $loggedUser->setEmail($data['email']);

                return $loggedUser;

            }
        } 
        return false;
    }
}
