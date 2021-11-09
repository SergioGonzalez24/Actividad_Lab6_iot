<?php

class conexion {
    const user='id17889621_admin';
    const password='^K1uZPo]OHt|cNi=';
    const database='id17889621_servidoriot';
    const server='localhost';


    public function conectardatabase() {
        $conectar = new mysqli(self::server, self::user, self::password, self::database);
        if ($conectar->connect_errno) {
           die("Error en conexion".$conectar->connect_error); 
        }


        return $conectar;
    }
}
?>