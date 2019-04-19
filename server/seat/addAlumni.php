<?php
error_reporting(E_ALL ^ E_DEPRECATED);
// error_reporting(0);
header("Content-type:text/json;charset=utf8");
//定义参数
    $user_name = '';
    $gender = '';
    $company = '';
    $position = '';
    $local_alumni_association_position = '';

    $user_name = $_GET["name"];
    $gender = $_GET["gender"];
    $company = $_GET["company"];
    $position = $_GET["position"];
    $local_alumni_association_position = $_GET["local_alumni_association_position"];

    //连接数据库
    $con = mysql_connect("localhost","root","root");
    if(!$con){
        die('Connect failed: ' . mysql_error());
    }
    //设置数据库字符集  
    mysql_query("SET NAMES UTF8");
    //查询数据库
    mysql_select_db("ln_database", $con);
    $result = mysql_query("INSERT INTO tb_alumni_activity(name,gender,company,position,local_alumni_association_position) values ('{$user_name}','{$gender}','${company}','${position}','${local_alumni_association_position}') ",$con); 

    echo json_encode($result);
    //print_r($results);
    //关闭数据库连接
    mysql_close($con);
?>