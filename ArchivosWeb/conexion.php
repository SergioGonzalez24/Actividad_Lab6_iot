<?php

class conexion {

    const user='root';
    const password='';
    const database='Actividad6';
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
