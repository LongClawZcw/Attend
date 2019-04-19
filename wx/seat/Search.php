<?php
error_reporting(E_ALL ^ E_DEPRECATED);
header("Content-type:text/json;charset=utf8");
    //定义参数
    $user_name = $_GET["user_name"];
    //表单验证

    //连接数据库
    $con = mysql_connect("localhost","root","root");
    if(!$con){
        die('Connect failed: ' . mysql_error());
    }
    //设置数据库字符集  
    mysql_query("SET NAMES UTF8");
    //查询数据库
    mysql_select_db("ln_database", $con);
    $result = mysql_query("SELECT * FROM tb_alumni_activity WHERE name = '{$user_name}'",$con);  
    if( mysql_num_rows($result) < 1){ 
         //echo "[{\"result\":\"123\"}]";
        exit(0);
    }
    $results = array();
    //print_r(mysql_fetch_assoc($result));
    while($row = mysql_fetch_assoc($result))
    {
        $results[] = $row;
        // 将数组转成json格式
    }
    echo json_encode($results);
    //print_r($results);
    //关闭数据库连接
    mysql_close($con);
?>