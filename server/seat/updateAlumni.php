<?php
error_reporting(E_ALL ^ E_DEPRECATED);
header("Content-type:text/json;charset=utf8");
//定义参数
    $old_name = '';
    $user_name = '';
    $gender = '';
    $company = '';
    $position = '';
    $local_alumni_association_position = '';
    $old_name = $_GET["oldname"];
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
    $result = mysql_query("UPDATE tb_alumni_activity SET name = '{$user_name}' ,gender = '{$gender}',company ='${company}' ,position = '${position}' , local_alumni_association_position ='${local_alumni_association_position}'  WHERE name = '{$old_name}'",$con); 
    echo json_encode($result);
    //print_r($results);
    //关闭数据库连接
    mysql_close($con);
?>