<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <style>
        body{
            margin:0;
            padding: 0;
            height: 100dvh;
            background: -moz-linear-gradient(90deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%); 
            background: -webkit-linear-gradient(90deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%); 
            background: linear-gradient(90deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%);
            font-family: sans-serif;
            color: #fff;
            display: grid;
            place-items: center;
        }

        .container{
            display: flex;
            flex-direction: column;
            gap: 20px;
            justify-content: center;
            align-items: center;
        }

        .container h1{
            margin-bottom: 0;
        }

        button{
            background: transparent;
            border: 1px solid #fff;
            color: #fff;
            font-size: x-large;
            padding: 8px;
            width: 70%;
            border-radius: 5px;
        }

        button:hover{
            background: #fff;
            color: #cc2366;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>THREE LEVEL AUTHENTICATION</h1>
        <button onclick="goLoginPage()">SignIn</button>
        <button onclick="goRegisterPage()">SignUp</button>
    </div>
</body>
<script>
    function goLoginPage(){
        location.href="login1.jsp"
    }
    function goRegisterPage(){
        location.href="register1.jsp"
    }
</script>
</html>