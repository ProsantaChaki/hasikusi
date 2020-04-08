<?php 
session_start();
include '../dbConnect.php';	
include("../dbClass.php");

$dbClass = new dbClass;	
extract($_POST);




if($q=="getQuestion"){
    //echo 1; die;
    $sql ="SELECT * from question";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
}

?>