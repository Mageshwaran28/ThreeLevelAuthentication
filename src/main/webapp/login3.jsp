<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register 3</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            height: 100dvh;
            font-family: sans-serif;
            background: #010101;
            display: grid;
            place-items: center;
            background-position: center;
        }

        .container{
            padding: 40px;
            background-color: #101626;
            border-radius: 8px;
        }

        p{
            font-size: large;
            color: #fff;
        }

        .input-field{
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .input{
            width: 100%;
            height: 30px;
            border: .1px solid #000;
            background: #fff;
            border-radius: 5px;
        }

        label{
            color: #fff;
            font-size: large;
        }

        input[type=checkbox] {
          accent-color: blue;
        }

        .backspace{
            background: red;
            border: 0;
            color: #fff;
            padding: 5px 10px;
            font-size: large;
            border-radius: 5px;
            cursor: pointer;
        }

        .keyboard{
            display: grid;
            grid-template-columns: auto auto auto;
            gap: 20px;
            margin-bottom: 10px;
        }

        .Caps{
            display: grid;
            grid-template-columns: repeat(6,23px);
        }

        .Small{
            display: grid;
            grid-template-columns: repeat(6,23px);
        }

        .IntChar{
            display: grid;
            grid-template-columns: repeat(4,23px);
            justify-content: center;
        }

        .letter{
            padding: 3px;
            width: 20px;
            height: 20px;
            text-align: center;
            cursor: pointer;
            font-size: large;
            color: #fff;
        }

        .letter:hover{
            background-color: #010101;
            border-radius: 3px;
        }

        .submit,.sub{
            display: grid;
            place-items: center;
        }

        .sub{
            margin: 15px 0px 20px 0px;
        }

        .sub button{
            padding: 8px 50px;
            color: #fff;
            background-color: #267EE5;
            font-size: large;
            border-radius: 30px;
            border: 0;
            cursor: pointer;
        }

        .header{
            margin: 0;
            font-size: xx-large;
            margin-bottom: 5px;
        }
        
         .input-group{
            position: relative;
        }

        .show{
            position: absolute;
            top: 0;
            right: 0;
            padding-top: 7px;
            padding-right: 3px;
            cursor: pointer;
        }
        
        a{
        	margin-top: 30px;
        	margin-left:150px;
        }

    </style>
</head>
<body>
<%
	String uname = (String)request.getAttribute("uname");
	String status = (String) request.getAttribute("status");
%>
    <div class="container">
        <form action="Login3Servlet" method="post">
	        <div class="sub">
	            <p class="header">Login 3</p>
	        </div>
	        <div class="input-field">
				<label for="input password">Enter Password</label>
	            <div class="input-group">
	                <input type="password" class="input password" name="pwd" readonly>
	                <span class="show p1" onclick="show()">Show</span>
            	</div>
	        </div>
	        <div class="keyboard">
	            <div class="Caps"></div>
	            <div class="Small"></div>
	            <div class="IntChar"></div>
	        </div>
	        <input type="hidden" class="uname" name="uname">
	        <div class="submit">
	            <button class="backspace">Backspace</button>
	        </div>
	        <div class="sub">
	            <button class="submitBtn">Submit</button>
	        </div>
	        <input type="hidden" class="uname" name="uname">
	        <a href="forgot3.jsp">Forgot Password</a>
        </form>
    </div>
</body>
<script>
    var Capital=['Q','W','E','R','T','Y','U','I','O','P','A','S','D','F','G','H','J','K','L','Z','X','C','V','B','N','M']
    var Small =['z','x','c','v','b','n','m','a','s','d','f','g','h','j','k','l','q','w','e','r','t','y','u','i','o','p']
    var Char=['1','2','3','4','5','6','7','8','9','0','@','#','&','?','!','$','/'];
    for(let i=0;i<20;i++){
        var ran1 = Math.floor(Math.random()*26);
        var ran2 = Math.floor(Math.random()*26);
        [Capital[ran1],Capital[ran2]]=[Capital[ran2],Capital[ran1]]
    }
    for(let i=0;i<20;i++){
        var ran1 = Math.floor(Math.random()*26);
        var ran2 = Math.floor(Math.random()*26);
        [Small[ran1],Small[ran2]]=[Small[ran2],Small[ran1]]
    }
    for(let i=0;i<20;i++){
        var ran1 = Math.floor(Math.random()*17);
        var ran2 = Math.floor(Math.random()*17);
        [Char[ran1],Char[ran2]]=[Char[ran2],Char[ran1]]
    }

    var cap = document.querySelector('.Caps');
    var sma = document.querySelector('.Small');
    var sup = document.querySelector('.IntChar');
    var EnterPassword="";
    var pwdField=document.querySelector('.input.password');

    for(let i=0;i<Capital.length;i++)
        cap.innerHTML+='<div class="letter">'+Capital[i]+'</div>';

    for(let i=0;i<Small.length;i++)
        sma.innerHTML+='<div class="letter">'+Small[i]+'</div>';
    
    for(let i=0;i<Char.length;i++)
        sup.innerHTML+='<div class="letter">'+Char[i]+'</div>';

    var letters = document.querySelectorAll('.letter');
    var letterArr=Array.from(letters);
    letterArr.forEach(letter=>{
        letter.addEventListener("click",()=>{
                pwdField.value+=letter.innerHTML;
        });
    })

    document.querySelector('.backspace').addEventListener("click",()=>{
    	event.preventDefault();
        EnterPassword = pwdField.value;
		pwdField.value=EnterPassword.substring(0,EnterPassword.length-1);
    });


    document.querySelector('.submitBtn').addEventListener("click",()=>{
        var p1 = pwdField.value;
       	if(p1.length<8){
        	event.preventDefault();
            alert("Enter 8 Character password")
        }
       	else{
       		document.querySelector('.uname').value='<%=uname%>';
       	}
    })
    
     function show(){
        var pwd = document.querySelector('.password');
        var t1 = pwd.getAttribute("type");
        if(t1=="password")
            pwd.setAttribute("type","text");
        else
            pwd.setAttribute("type","password");
          
    }
	
    <% if(status!=null){%>
        let status = '<%=status%>'
        alert(status);
	<%}%>
    
</script>
</html>