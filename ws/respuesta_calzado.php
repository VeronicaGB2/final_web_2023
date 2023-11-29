<?php 
  header('Content-Type: application/json; charset=utf-8');
  include_once(__DIR__.'/../admin/controllers/sistema.php');
  include_once(__DIR__."/../admin/controllers/respuesta_calzado.php");

  $action = $_SERVER['REQUEST_METHOD'];
  $idRespuestaCalzado = isset($_GET['id']) ? $_GET['id'] : null;

  switch ($action) {
    case 'DELETE':
      $data['mensaje'] = 'No existe la respuesta del calzado';
      if (!is_null($idRespuestaCalzado)) {
        $contador = $respuesta_calzado->delete($idRespuestaCalzado);
        if ($contador == 1) {
          $data['mensaje']= 'Se elimino la respuesta del calzado';
        }
      }
    break;
    case 'POST':
      $data = array();
      $data = $_POST['data'];
      if (is_null($idRespuestaCalzado)) {
        $cantidad = $respuesta_calzado->new($data);
        if ($cantidad !=0) {
          $data['mensaje']='Se inserto la respuesta del calzado.';
        }else{
            $data['mensaje']='Ocurrio un error';
        }
      }else {
        $cantidad = $respuesta_calzado->edit($idRespuestaCalzado, $data);
        if ($cantidad !=0) {
          $data['mensaje']='Se actualizo la respuesta del calzado.';
          //$data[]
        }else{
            $data['mensaje']='Ocurrio un error';
        }
      }
    break;
    case 'GET':
    default:
      if (is_null($idRespuestaCalzado)) {
        $data = $respuesta_calzado->get();
      } else {
        $data = $respuesta_calzado->get($idRespuestaCalzado);
      }
    break;
  }

$data = json_encode($data);
echo ($data);
?>