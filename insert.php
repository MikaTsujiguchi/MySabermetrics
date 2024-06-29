<?php
//1. POSTデータ取得
//[name,email,age,naiyou]
$name =   $_POST["name"];
$grade =  $_POST["grade"];
$position =  $_POST["position"];
$OPS = $_POST["OPS"];
$wOBA = $_POST["wOBA"];
$Spd = $_POST["Spd"]; 
$IsoP = $_POST["IsoP"];
$IsoD = $_POST["IsoD"];

//2. DB接続します
try {
  //Password:MAMP='root',XAMPP=''
  $pdo = new PDO('mysql:dbname=pr_dashboard;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('DB_CONECT:'.$e->getMessage());
}


//３．データ登録SQL作成
$SQL = "INSERT INTO pr_dashboard_table(id,name,grade,position,OPS,wOBA,Spd,Isop,IsoD,indate)VALUES(NULL,:name,:grade,:position,:OPS,:wOBA,:Spd,:IsoP,:IsoD,sysdate());";
$stmt = $pdo->prepare($SQL);
$stmt->bindValue(':name',      $name,       PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':grade',     $grade,      PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':position',  $position,   PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':OPS',       $OPS,        PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':wOBA',      $wOBA,       PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':Spd',       $Spd,        PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':IsoP',      $IsoP,       PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':IsoD',      $IsoD,       PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)


$status = $stmt->execute();

//４．データ登録処理後
if($status==false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit("SQL_ERROR:".$error[2]);
}else{
  // ５．index.phpへリダイレクト
  header('Location: index.php');
   exit();
}
?>
