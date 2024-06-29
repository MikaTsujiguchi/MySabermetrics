<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="style.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Document</title>
</head>
<body>
  

<form method="POST" action="insert.php">
  <div class="jumbotron">
   <img src="title.png" alt="" id="title" width="700">
    <P>Your Basic Info</P>
     <label>Name：<input id="name" type="text" name="name" required></label>
     <label>&emsp;Grade：<select id="grade" name="grade">
        <option>Grade 1</option>
        <option>Grade 2</option>
        <option>Grade 3</option>
    </select></label>
     <label>&emsp;Position：<select id="position" name="position">
        <option>Pitcher</option>
        <option>Catcher</option>
        <option>First Base</option>
        <option>Second Base</option>
        <option>Third Base</option>
        <option>Shortstop</option>
        <option>Center Field</option>
        <option>Right Field</option>
        <option>Left Field</option>
        
    </select></label>

    <P>Your Scores</P>

     <label>OPS：<input id="OPS" type="text" name="OPS" required></label>
     <label>&emsp;wOBA：<input id="wOBA" type="text" name="wOBA" required></label>
     <label>&emsp;Spd：<input id="Spd" type="text" name="Spd" required></label><br>
     <label>IsoP：<input id="IsoP" type="text" name="IsoP" required></label>
     <label>&emsp;&emsp;IsoD：<input id="IsoD" type="text" name="IsoD" required></label><br>
     <button id="btn_submit" type="submit" value="Submit" required>Send<i class='bx bxs-send'></i></button>
     
     <?php
//2. DB接続します
try {
  //Password:MAMP='root',XAMPP=''
  $pdo = new PDO('mysql:dbname=pr_dashboard;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('DBConnection Error:'.$e->getMessage());
}


//２．データ登録SQL作成
$sql = "SELECT * FROM pr_dashboard_table";
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();


//３．データ表示
$values = "";
if($status==false) {
  $error = $stmt->errorInfo();
  exit("SQLError:".$error[2]);
}



//全データ取得
$values =  $stmt->fetchAll(PDO::FETCH_ASSOC); //PDO::FETCH_ASSOC[カラム名のみで取得できるモード]
$json = json_encode($values,JSON_UNESCAPED_UNICODE);

?>



<div>
    <div class="container jumbotron">

<br>
<p> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Name &emsp;&emsp;&emsp;Grade &emsp;&emsp;&emsp;Position &emsp;&emsp;OPS &emsp;wOBA &emsp;Spd &emsp;IsoP &emsp;IsoD</p>

<div id="table">
<table border="1">
<?php foreach($values as $values){ ?>
  <tr>
    <td><?=$values["id"]?></td>
    <td><?=$values["name"]?></td>
    <td><?=$values["grade"]?></td>
    <td><?=$values["position"]?></td>
    <td><?=$values["OPS"]?></td>
    <td><?=$values["wOBA"]?></td>
    <td><?=$values["Spd"]?></td>
    <td><?=$values["IsoP"]?></td>
    <td><?=$values["IsoD"]?></td>
  </tr>
<?php } ?>
</table>
</div>


  </div>
</div>
<!-- Main[End] -->
<script>
  const a = '<?php echo $json; ?>';
  console.log(JSON.parse(a));
</script>
  </div>
</form>







  </div>
</div>
<!-- Main[End] -->
<script>
  const a = '<?php echo $json; ?>';
  console.log(JSON.parse(a));
</script>

</body>
</html>