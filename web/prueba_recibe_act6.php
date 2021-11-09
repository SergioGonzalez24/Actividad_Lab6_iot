<?php

    require_once('serverConexion.php');

    $device = $_POST['dispositivo'];
    $val = $_POST['valSensor'];
    $led = $_POST['ledEstado'];

    $conn = new conexion();

    $query = "SELECT*FROM estadoDispositivo WHERE IdDispositivo = '$device'";
    $check = mysqli_query($conn->conectardatabase(),$query);

    if($check->num_rows) {
        $query = "UPDATE estadoDispositivo SET valorSensor=$val, ledEstado=$led WHERE idDispositivo = '$device'";
        $update = mysqli_query($conn->conectardatabase(),$query);
    
        $query = "INSERT INTO historialDispositivo(idDispositivo, nomVariable, valorVariable, fecha) VALUES('$device','fotoresistencia','$val',NOW())";
        $insert = mysqli_query($conn->conectardatabase(),$query);

        $query = "INSERT INTO historialDispositivo(idDispositivo, nomVariable, valorVariable, fecha) VALUES('$device','led','$led',NOW())";
        $insert = mysqli_query($conn->conectardatabase(),$query);
    


        echo "*** DATOS REGISTRADOS *** <BR>";
        echo "{Dispositivo: ".$device.", Fotoresistencia: ".$val.", Led: ".$led."}";

    } else {
        echo $device;
        //echo "*** TARJETA INEXISTENTE *** <BR>";
    }





?>