<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body{
            background: rgb(2,0,36);
            background: linear-gradient(180deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
            background-attachment: fixed;
            margin: 0;
            font-family: 'Poppins',sans-serif;
            height: 100dvh;
            display: grid;
            place-items: center;
        }

        #form{
            width: 400px;
            background-color: whitesmoke;
            border-radius: 5px;
            padding: 30px;
        }

        h1{
            text-align: center;
            color: rgba(9,9,121,1);
        }

        #form button{
            background-color: rgba(9,9,121,1);
            color: #fff;
            border: 1px solid rgba(9,9,121,1);
            border-radius: 5px;
            padding: 10px;
            margin: 20px 0px;
            cursor: pointer;
            font-size: 20px;
            width: 100%;
        }

        .input-group{
            display: flex;
            flex-direction: column;
            margin-bottom: 15px;
        }

        .input-group input{
            border-radius: 5px;
            font-size: 20px;
            margin-top: 5px;
            padding: 10px;
            border: 1px solid rgb(34,193,195);
        }

        .input-group input:focus{
            outline: 0;
        }

        .input-group .error{
            color: rgb(242,18,18);
            font-size: 16px;
            margin-top: 5px;
        }

        .input-group.success input{
            border-color: #0cc477;
        }

        .input-group.error input{
            border-color: rgb(206,67,67);
        }
        
        a{
        	margin-left:140px;
        }

    </style>
</head>
<body>
<%
	String status = (String) request.getAttribute("status");
%>
    <div class="container">
        <form action="Login1Servlet" method="post" id="form">
            <h1>Login 1</h1>
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username">
                <div class="error"></div>
            </div>
            <div class="input-group">
                <label for="email">Email</label>
                <input type="text" id="email" name="email">
                <div class="error"></div>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password">
                <div class="error"></div>
            </div>
            <button type="submit" onclick="validateInputs()">Login</button>
            <a href="forgot.jsp">Forgot Password</a>
        </form>
    </div>

    <script>

        const form = document.querySelector('#form');
        const username = document.querySelector('#username');
        const email = document.querySelector('#email');
        const password = document.querySelector('#password');
        var mailformat = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;


        function validateInputs(){
            let success = true;

            const usernameVal = username.value.trim();
            const emailval = email.value.trim();
            const passwordVal = password.value.trim();


            if(usernameVal===''){
                setError(username,'Enter the username');
                success = false;
            }
            else
                setSuccess(username);

            
            if(emailval===''){
                setError(email,'Enter the email')
                success = false;
            }

            else if(!emailval.match(mailformat)){
                setError(email,'Enter the correct email')
                success = false;
            }
            else
                setSuccess(email)

            
            if(passwordVal===''){
                setError(password,'Enter the password')
                success = false;
            }
            else if(passwordVal.length<8){
                setError(password,'Enter minimum 8 characters')
                success = false;
            }
            else if(!passwordVal.match(/[a-z]/g)){
                setError(password,'Enter atleast one lowercase character')
                success = false;
            }
            else if(!passwordVal.match(/[A-Z]/g)){
                setError(password,'Enter atleast one uppercase character')
                success = false;
            }
            else if(!passwordVal.match(/[0-9]/g)){
                setError(password,'Enter atleast one digit number')
                success = false;
            }
            else if(!passwordVal.match(/[!@#$%^&*()';,.<>:"{}']/g)){
                setError(password,'Enter atleast one special character ')
                success = false;
            }
            else
                setSuccess(password);


            if(success === false)
                 event.preventDefault();
            
           
        }

       

        function setSuccess(element){
            const inputgroup = element.parentElement;
            const errorElement = inputgroup.querySelector('.error');

            errorElement.innerText = '';
            inputgroup.classList.add('success')
            inputgroup.classList.remove('error')

        }

        function setError(element,message){
            const inputgroup = element.parentElement;
            const errorElement = inputgroup.querySelector('.error');

            errorElement.innerText = message;
            inputgroup.classList.add('error')
            inputgroup.classList.remove('success')

        }
        
        <% if(status!=null){%>
        let status = '<%=status%>'
        alert(status);
        <%}%>


    </script>
</body>
</html>