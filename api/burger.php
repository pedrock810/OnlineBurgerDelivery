<?php
include "config.php";
include "utils.php";


$dbConn =  connect($db);

/*
  listar todos los burger o solo uno
 */
if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    if (isset($_GET['burgerId']))
    {
      //Mostrar un post
      $sql = $dbConn->prepare("SELECT * FROM burger where burgerId=:burgerId");
      $sql->bindValue(':burgerId', $_GET['burgerId']);
      $sql->execute();
      header("HTTP/1.1 200 OK");
      echo json_encode(  $sql->fetch(PDO::FETCH_ASSOC)  );
      exit();
	  }
    else {
      //Mostrar lista de post
      $sql = $dbConn->prepare("SELECT * FROM burger");
      $sql->execute();
      $sql->setFetchMode(PDO::FETCH_ASSOC);
      header("HTTP/1.1 200 OK");
      echo json_encode( $sql->fetchAll()  );
      exit();
	}
}

// Crear un nuevo post
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $input = $_POST;
    $sql = "INSERT INTO burger
          (burgerName, burgerPrice, burgerDesc, burgerCategorieId)
          VALUES
          (:burgerName, :burgerPrice, :burgerDesc, :burgerCategorieId)";
    $statement = $dbConn->prepare($sql);
    bindAllValues($statement, $input);
    $statement->execute();
    $postId = $dbConn->lastInsertId();
    if($postId)
    {
      $input['burgerId'] = $postId;
      header("HTTP/1.1 200 OK");
      echo json_encode($input);
      exit();
	 }
}

//Borrar
if ($_SERVER['REQUEST_METHOD'] == 'DELETE')
{
	$id = $_GET['burgerId'];
  $statement = $dbConn->prepare("DELETE FROM burger where burgerId=:burgerId");
  $statement->bindValue(':burgerId', $id);
  $statement->execute();
	header("HTTP/1.1 200 OK");
	exit();
}

//Actualizar
if ($_SERVER['REQUEST_METHOD'] == 'PUT')
{
    $input = $_GET;
    $postId = $input['burgerId'];
    $fields = getParams($input);

    $sql = "
          UPDATE burger
          SET $fields
          WHERE burgerId='$postId'
           ";

    $statement = $dbConn->prepare($sql);
    bindAllValues($statement, $input);

    $statement->execute();
    header("HTTP/1.1 200 OK");
    exit();
}


//En caso de que ninguna de las opciones anteriores se haya ejecutado
header("HTTP/1.1 400 Bad Request");

?>