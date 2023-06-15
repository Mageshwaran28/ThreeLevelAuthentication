<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirm Password</title>
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
            margin-top: 15px;
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

    </style>
</head>
<body>
<%
	String email = (String)request.getAttribute("email");
%>
    <div class="container">
        <form action="CpwdForgot3" method="post">
	        <div class="sub">
	            <p class="header">Confirm Password</p>
	        </div>
	        <div class="input-field">
	            <div>
	                <input type="checkbox" id="pwd" value="yes" >
	                <label for="pwd">Enter Password</label>
	            </div>
				<div class="input-group">
	                <input type="password" class="input password" name="pwd" readonly>
	                <span class="show p1" onclick="show()">Show</span>
	            </div>	            
	            <div>
	                <input type="checkbox" id="cpwd">
	                <label for="cpwd">Confirm Password</label>
	            </div>
				<div class="input-group">
	                <input type="password" class="input ConfirmPassword" readonly>
	                <span class="show" onclick="show1()">Show</span>
            </div>
            </div>
	        <div class="keyboard">
	            <div class="Caps"></div>
	            <div class="Small"></div>
	            <div class="IntChar"></div>
	        </div>
	        <input type="hidden" class="uname" name="email">
	        <div class="submit">
	            <button class="backspace">Backspace</button>
	        </div>
	        <div class="sub">
	            <button class="submitBtn">Submit</button>
	        </div>
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
    var ConfirmPassword="";
    var pwdField=document.querySelector('.input.password');
    var cpwdField=document.querySelector('.input.ConfirmPassword');


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
            var c1 = document.querySelector('#pwd');
            var c2 = document.querySelector('#cpwd');
            if(c1.checked && c2.checked){
                alert("Check at the time one only")
            }
            else if(c1.checked==false && c2.checked==false){
                alert("Click atmost one box")
            }
            else if(c1.checked){
                pwdField.value+=letter.innerHTML;
            }
            else if(c2.checked){
                cpwdField.value+=letter.innerHTML;
            }
        });
    })

    document.querySelector('.backspace').addEventListener("click",()=>{
    	event.preventDefault();
        var c1 = document.querySelector('#pwd');
        var c2 = document.querySelector('#cpwd');
        EnterPassword = pwdField.value;
        ConfirmPassword = cpwdField.value;
        if(c1.checked && c2.checked){
                alert("Check at the time one only")
            }
            else if(c1.checked==false && c2.checked==false){
                alert("Click atmost one box")
            }
            else if(c1.checked){
                pwdField.value=EnterPassword.substring(0,EnterPassword.length-1);
            }
            else if(c2.checked){
                cpwdField.value=ConfirmPassword.substring(0,ConfirmPassword.length-1);
            }
    });


    document.querySelector('.submitBtn').addEventListener("click",()=>{
        var p1 = pwdField.value;
        var p2 = cpwdField.value;
        if(p1=='' || p2==''){
        	event.preventDefault();
            alert("Please Enter the password")
        }
        else if(p1.length<8 || p2.length<8){
        	event.preventDefault();
            alert("Enter 8 Character password")
        }
        else if(!p1.match(/[a-z]/g)){
        	event.preventDefault();
            alert('Enter atleast one lowercase character')
        }
        else if(!p1.match(/[A-Z]/g)){
        	event.preventDefault();
            alert('Enter atleast one uppercase character')
        }
        else if(!p1.match(/[0-9]/g)){
        	event.preventDefault();
            alert('Enter atleast one digit number')
        }
        else if(!p1.match(/[@#&?!$/]/g)){
        	event.preventDefault();
            alert('Enter atleast one special character ')
        }
        else if(p1!=p2){
        	event.preventDefault();
            alert("Please check the confirm password")
        }
        else if(p1==p2){
        	document.querySelector('.uname').value='<%=email %>';
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

    function show1(){
        var t2 = cpwdField.getAttribute("type");
        if(t2=="password")
            cpwdField.setAttribute("type","text");
        else
            cpwdField.setAttribute("type","password");
          
    }

</script>
</html>