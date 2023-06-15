<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <style>
        body{
            margin: 0;
            padding: 0;
            height: 100dvh;
            font-family: sans-serif;
            background: linear-gradient(180deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
            display: grid;
            place-items: center;
        }
        

        h2{
            margin: 0;
            color: #fff;
        }

        .container{
            display: flex;
            flex-direction: column;
            gap: 10px;
            place-items: center;
            padding: 20px;
        }

        
        .display_image{
            width: 400px;
            height: 400px;
            border: 1px solid ;
            background-position: center;
            background-size: cover;
            margin-top: 10px;
            display: grid;
            grid-template-columns: repeat(20,20px);
        }

        .display_image>div{
            width: 20px;
            height: 20px;
        }

        .display_image>.active{
            background-color: #fff;
            opacity:.2;
            backdrop-filter: blur(10px);
        }

        button{
            background-color: #0052cc;
            padding: 8px 10px;
            color: #fff;
            font-size: large;
            border: 0;
            border-radius: 5px;
        }

        .result{
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
        }
        

        
        
    </style>
</head>
<body>
<%
	String imgName = (String)request.getAttribute("imageName");
	String uname = (String)request.getAttribute("uname");
	String status = (String) request.getAttribute("status");
	System.out.println(imgName+" "+uname);
%>
    <div class="container">
        <form action="Login2Servlet" method="post">
	        <h2 align="center">Login 2</h2>
	        
	        <div class="result">
	            <div class="display_image">
	                <div class="pixel-1"></div>
	                <div class="pixel-2"></div>
	                <div class="pixel-3"></div>
	                <div class="pixel-4"></div>
	                <div class="pixel-5"></div>
	                <div class="pixel-6"></div>
	                <div class="pixel-7"></div>
	                <div class="pixel-8"></div>
	                <div class="pixel-9"></div>
	                <div class="pixel-10"></div>
	                <div class="pixel-11"></div>
	                <div class="pixel-12"></div>
	                <div class="pixel-13"></div>
	                <div class="pixel-14"></div>
	                <div class="pixel-15"></div>
	                <div class="pixel-16"></div>
	                <div class="pixel-17"></div>
	                <div class="pixel-18"></div>
	                <div class="pixel-19"></div>
	                <div class="pixel-20"></div>
	                <div class="pixel-21"></div>
	                <div class="pixel-22"></div>
	                <div class="pixel-23"></div>
	                <div class="pixel-24"></div>
	                <div class="pixel-25"></div>
	                <div class="pixel-26"></div>
	                <div class="pixel-27"></div>
	                <div class="pixel-28"></div>
	                <div class="pixel-29"></div>
	                <div class="pixel-30"></div>
	                <div class="pixel-31"></div>
	                <div class="pixel-32"></div>
	                <div class="pixel-33"></div>
	                <div class="pixel-34"></div>
	                <div class="pixel-35"></div>
	                <div class="pixel-36"></div>
	                <div class="pixel-37"></div>
	                <div class="pixel-38"></div>
	                <div class="pixel-39"></div>
	                <div class="pixel-40"></div>
	                <div class="pixel-41"></div>
	                <div class="pixel-42"></div>
	                <div class="pixel-43"></div>
	                <div class="pixel-44"></div>
	                <div class="pixel-45"></div>
	                <div class="pixel-46"></div>
	                <div class="pixel-47"></div>
	                <div class="pixel-48"></div>
	                <div class="pixel-49"></div>
	                <div class="pixel-50"></div>
	                <div class="pixel-51"></div>
	                <div class="pixel-52"></div>
	                <div class="pixel-53"></div>
	                <div class="pixel-54"></div>
	                <div class="pixel-55"></div>
	                <div class="pixel-56"></div>
	                <div class="pixel-57"></div>
	                <div class="pixel-58"></div>
	                <div class="pixel-59"></div>
	                <div class="pixel-60"></div>
	                <div class="pixel-61"></div>
	                <div class="pixel-62"></div>
	                <div class="pixel-63"></div>
	                <div class="pixel-64"></div>
	                <div class="pixel-65"></div>
	                <div class="pixel-66"></div>
	                <div class="pixel-67"></div>
	                <div class="pixel-68"></div>
	                <div class="pixel-69"></div>
	                <div class="pixel-70"></div>
	                <div class="pixel-71"></div>
	                <div class="pixel-72"></div>
	                <div class="pixel-73"></div>
	                <div class="pixel-74"></div>
	                <div class="pixel-75"></div>
	                <div class="pixel-76"></div>
	                <div class="pixel-77"></div>
	                <div class="pixel-78"></div>
	                <div class="pixel-79"></div>
	                <div class="pixel-80"></div>
	                <div class="pixel-81"></div>
	                <div class="pixel-82"></div>
	                <div class="pixel-83"></div>
	                <div class="pixel-84"></div>
	                <div class="pixel-85"></div>
	                <div class="pixel-86"></div>
	                <div class="pixel-87"></div>
	                <div class="pixel-88"></div>
	                <div class="pixel-89"></div>
	                <div class="pixel-90"></div>
	                <div class="pixel-91"></div>
	                <div class="pixel-92"></div>
	                <div class="pixel-93"></div>
	                <div class="pixel-94"></div>
	                <div class="pixel-95"></div>
	                <div class="pixel-96"></div>
	                <div class="pixel-97"></div>
	                <div class="pixel-98"></div>
	                <div class="pixel-99"></div>
	                <div class="pixel-100"></div>
	                <div class="pixel-101"></div>
	                <div class="pixel-102"></div>
	                <div class="pixel-103"></div>
	                <div class="pixel-104"></div>
	                <div class="pixel-105"></div>
	                <div class="pixel-106"></div>
	                <div class="pixel-107"></div>
	                <div class="pixel-108"></div>
	                <div class="pixel-109"></div>
	                <div class="pixel-110"></div>
	                <div class="pixel-111"></div>
	                <div class="pixel-112"></div>
	                <div class="pixel-113"></div>
	                <div class="pixel-114"></div>
	                <div class="pixel-115"></div>
	                <div class="pixel-116"></div>
	                <div class="pixel-117"></div>
	                <div class="pixel-118"></div>
	                <div class="pixel-119"></div>
	                <div class="pixel-120"></div>
	                <div class="pixel-121"></div>
	                <div class="pixel-122"></div>
	                <div class="pixel-123"></div>
	                <div class="pixel-124"></div>
	                <div class="pixel-125"></div>
	                <div class="pixel-126"></div>
	                <div class="pixel-127"></div>
	                <div class="pixel-128"></div>
	                <div class="pixel-129"></div>
	                <div class="pixel-130"></div>
	                <div class="pixel-131"></div>
	                <div class="pixel-132"></div>
	                <div class="pixel-133"></div>
	                <div class="pixel-134"></div>
	                <div class="pixel-135"></div>
	                <div class="pixel-136"></div>
	                <div class="pixel-137"></div>
	                <div class="pixel-138"></div>
	                <div class="pixel-139"></div>
	                <div class="pixel-140"></div>
	                <div class="pixel-141"></div>
	                <div class="pixel-142"></div>
	                <div class="pixel-143"></div>
	                <div class="pixel-144"></div>
	                <div class="pixel-145"></div>
	                <div class="pixel-146"></div>
	                <div class="pixel-147"></div>
	                <div class="pixel-148"></div>
	                <div class="pixel-149"></div>
	                <div class="pixel-150"></div>
	                <div class="pixel-151"></div>
	                <div class="pixel-152"></div>
	                <div class="pixel-153"></div>
	                <div class="pixel-154"></div>
	                <div class="pixel-155"></div>
	                <div class="pixel-156"></div>
	                <div class="pixel-157"></div>
	                <div class="pixel-158"></div>
	                <div class="pixel-159"></div>
	                <div class="pixel-160"></div>
	                <div class="pixel-161"></div>
	                <div class="pixel-162"></div>
	                <div class="pixel-163"></div>
	                <div class="pixel-164"></div>
	                <div class="pixel-165"></div>
	                <div class="pixel-166"></div>
	                <div class="pixel-167"></div>
	                <div class="pixel-168"></div>
	                <div class="pixel-169"></div>
	                <div class="pixel-170"></div>
	                <div class="pixel-171"></div>
	                <div class="pixel-172"></div>
	                <div class="pixel-173"></div>
	                <div class="pixel-174"></div>
	                <div class="pixel-175"></div>
	                <div class="pixel-176"></div>
	                <div class="pixel-177"></div>
	                <div class="pixel-178"></div>
	                <div class="pixel-179"></div>
	                <div class="pixel-180"></div>
	                <div class="pixel-181"></div>
	                <div class="pixel-182"></div>
	                <div class="pixel-183"></div>
	                <div class="pixel-184"></div>
	                <div class="pixel-185"></div>
	                <div class="pixel-186"></div>
	                <div class="pixel-187"></div>
	                <div class="pixel-188"></div>
	                <div class="pixel-189"></div>
	                <div class="pixel-190"></div>
	                <div class="pixel-191"></div>
	                <div class="pixel-192"></div>
	                <div class="pixel-193"></div>
	                <div class="pixel-194"></div>
	                <div class="pixel-195"></div>
	                <div class="pixel-196"></div>
	                <div class="pixel-197"></div>
	                <div class="pixel-198"></div>
	                <div class="pixel-199"></div>
	                <div class="pixel-200"></div>
	                <div class="pixel-201"></div>
	                <div class="pixel-202"></div>
	                <div class="pixel-203"></div>
	                <div class="pixel-204"></div>
	                <div class="pixel-205"></div>
	                <div class="pixel-206"></div>
	                <div class="pixel-207"></div>
	                <div class="pixel-208"></div>
	                <div class="pixel-209"></div>
	                <div class="pixel-210"></div>
	                <div class="pixel-211"></div>
	                <div class="pixel-212"></div>
	                <div class="pixel-213"></div>
	                <div class="pixel-214"></div>
	                <div class="pixel-215"></div>
	                <div class="pixel-216"></div>
	                <div class="pixel-217"></div>
	                <div class="pixel-218"></div>
	                <div class="pixel-219"></div>
	                <div class="pixel-220"></div>
	                <div class="pixel-221"></div>
	                <div class="pixel-222"></div>
	                <div class="pixel-223"></div>
	                <div class="pixel-224"></div>
	                <div class="pixel-225"></div>
	                <div class="pixel-226"></div>
	                <div class="pixel-227"></div>
	                <div class="pixel-228"></div>
	                <div class="pixel-229"></div>
	                <div class="pixel-230"></div>
	                <div class="pixel-231"></div>
	                <div class="pixel-232"></div>
	                <div class="pixel-233"></div>
	                <div class="pixel-234"></div>
	                <div class="pixel-235"></div>
	                <div class="pixel-236"></div>
	                <div class="pixel-237"></div>
	                <div class="pixel-238"></div>
	                <div class="pixel-239"></div>
	                <div class="pixel-240"></div>
	                <div class="pixel-241"></div>
	                <div class="pixel-242"></div>
	                <div class="pixel-243"></div>
	                <div class="pixel-244"></div>
	                <div class="pixel-245"></div>
	                <div class="pixel-246"></div>
	                <div class="pixel-247"></div>
	                <div class="pixel-248"></div>
	                <div class="pixel-249"></div>
	                <div class="pixel-250"></div>
	                <div class="pixel-251"></div>
	                <div class="pixel-252"></div>
	                <div class="pixel-253"></div>
	                <div class="pixel-254"></div>
	                <div class="pixel-255"></div>
	                <div class="pixel-256"></div>
	                <div class="pixel-257"></div>
	                <div class="pixel-258"></div>
	                <div class="pixel-259"></div>
	                <div class="pixel-260"></div>
	                <div class="pixel-261"></div>
	                <div class="pixel-262"></div>
	                <div class="pixel-263"></div>
	                <div class="pixel-264"></div>
	                <div class="pixel-265"></div>
	                <div class="pixel-266"></div>
	                <div class="pixel-267"></div>
	                <div class="pixel-268"></div>
	                <div class="pixel-269"></div>
	                <div class="pixel-270"></div>
	                <div class="pixel-271"></div>
	                <div class="pixel-272"></div>
	                <div class="pixel-273"></div>
	                <div class="pixel-274"></div>
	                <div class="pixel-275"></div>
	                <div class="pixel-276"></div>
	                <div class="pixel-277"></div>
	                <div class="pixel-278"></div>
	                <div class="pixel-279"></div>
	                <div class="pixel-280"></div>
	                <div class="pixel-281"></div>
	                <div class="pixel-282"></div>
	                <div class="pixel-283"></div>
	                <div class="pixel-284"></div>
	                <div class="pixel-285"></div>
	                <div class="pixel-286"></div>
	                <div class="pixel-287"></div>
	                <div class="pixel-288"></div>
	                <div class="pixel-289"></div>
	                <div class="pixel-290"></div>
	                <div class="pixel-291"></div>
	                <div class="pixel-292"></div>
	                <div class="pixel-293"></div>
	                <div class="pixel-294"></div>
	                <div class="pixel-295"></div>
	                <div class="pixel-296"></div>
	                <div class="pixel-297"></div>
	                <div class="pixel-298"></div>
	                <div class="pixel-299"></div>
	                <div class="pixel-300"></div>
	                <div class="pixel-301"></div>
	                <div class="pixel-302"></div>
	                <div class="pixel-303"></div>
	                <div class="pixel-304"></div>
	                <div class="pixel-305"></div>
	                <div class="pixel-306"></div>
	                <div class="pixel-307"></div>
	                <div class="pixel-308"></div>
	                <div class="pixel-309"></div>
	                <div class="pixel-310"></div>
	                <div class="pixel-311"></div>
	                <div class="pixel-312"></div>
	                <div class="pixel-313"></div>
	                <div class="pixel-314"></div>
	                <div class="pixel-315"></div>
	                <div class="pixel-316"></div>
	                <div class="pixel-317"></div>
	                <div class="pixel-318"></div>
	                <div class="pixel-319"></div>
	                <div class="pixel-320"></div>
	                <div class="pixel-321"></div>
	                <div class="pixel-322"></div>
	                <div class="pixel-323"></div>
	                <div class="pixel-324"></div>
	                <div class="pixel-325"></div>
	                <div class="pixel-326"></div>
	                <div class="pixel-327"></div>
	                <div class="pixel-328"></div>
	                <div class="pixel-329"></div>
	                <div class="pixel-330"></div>
	                <div class="pixel-331"></div>
	                <div class="pixel-332"></div>
	                <div class="pixel-333"></div>
	                <div class="pixel-334"></div>
	                <div class="pixel-335"></div>
	                <div class="pixel-336"></div>
	                <div class="pixel-337"></div>
	                <div class="pixel-338"></div>
	                <div class="pixel-339"></div>
	                <div class="pixel-340"></div>
	                <div class="pixel-341"></div>
	                <div class="pixel-342"></div>
	                <div class="pixel-343"></div>
	                <div class="pixel-344"></div>
	                <div class="pixel-345"></div>
	                <div class="pixel-346"></div>
	                <div class="pixel-347"></div>
	                <div class="pixel-348"></div>
	                <div class="pixel-349"></div>
	                <div class="pixel-350"></div>
	                <div class="pixel-351"></div>
	                <div class="pixel-352"></div>
	                <div class="pixel-353"></div>
	                <div class="pixel-354"></div>
	                <div class="pixel-355"></div>
	                <div class="pixel-356"></div>
	                <div class="pixel-357"></div>
	                <div class="pixel-358"></div>
	                <div class="pixel-359"></div>
	                <div class="pixel-360"></div>
	                <div class="pixel-361"></div>
	                <div class="pixel-362"></div>
	                <div class="pixel-363"></div>
	                <div class="pixel-364"></div>
	                <div class="pixel-365"></div>
	                <div class="pixel-366"></div>
	                <div class="pixel-367"></div>
	                <div class="pixel-368"></div>
	                <div class="pixel-369"></div>
	                <div class="pixel-370"></div>
	                <div class="pixel-371"></div>
	                <div class="pixel-372"></div>
	                <div class="pixel-373"></div>
	                <div class="pixel-374"></div>
	                <div class="pixel-375"></div>
	                <div class="pixel-376"></div>
	                <div class="pixel-377"></div>
	                <div class="pixel-378"></div>
	                <div class="pixel-379"></div>
	                <div class="pixel-380"></div>
	                <div class="pixel-381"></div>
	                <div class="pixel-382"></div>
	                <div class="pixel-383"></div>
	                <div class="pixel-384"></div>
	                <div class="pixel-385"></div>
	                <div class="pixel-386"></div>
	                <div class="pixel-387"></div>
	                <div class="pixel-388"></div>
	                <div class="pixel-389"></div>
	                <div class="pixel-390"></div>
	                <div class="pixel-391"></div>
	                <div class="pixel-392"></div>
	                <div class="pixel-393"></div>
	                <div class="pixel-394"></div>
	                <div class="pixel-395"></div>
	                <div class="pixel-396"></div>
	                <div class="pixel-397"></div>
	                <div class="pixel-398"></div>
	                <div class="pixel-399"></div>
	                <div class="pixel-400"></div>
	            </div>
	            <input type="hidden" class="uname" name="uname">
	            <input type="hidden" class="imgName" name="imgName">
	            <input type="hidden" class="pass" name="secondPwd">
	            <button onclick="saveImg()">Submit</button>
	            <a href="forgot2.jsp">Forgot Password</a>
	        </div>
        </form>
    </div>
</body>
<script>

	<% if(status!=null){%>
	let status = '<%=status%>'
	alert(status);
	<%}%>

    const image_input=document.querySelector('.Image');
    const dis_img = document.querySelector('.display_image');
    const dis_pix = document.querySelectorAll('.display_image>div');
    var res = document.querySelector('.result');
    var img ='<%=imgName%>'
    var uname = '<%=uname%>'
    var name = 'url("images/';
    console.log(name);
    name+=img;
    console.log(name);
    name+='")';
    console.log(name);
    dis_img.style.backgroundImage=name;
    console.log(img);
    
    let arr=Array.from(dis_pix)
    arr.forEach(pixels=>{
        pixels.addEventListener("click",()=>{
            pixels.classList.toggle('active');
        })
    })

    function saveImg(){
        var active = document.querySelectorAll('.active');
        var ImgPwd=""
        for(let i=0;i<active.length;i++)
            ImgPwd+=active[i].getAttribute("class")+" "
        var imgPixArray = ImgPwd.split(" ")
        if(imgPixArray.length<6){
        	event.preventDefault();
            alert("Mark atleast 3 points")
        }
        else{
            document.querySelector('.pass').value=ImgPwd;
            document.querySelector('.uname').value=uname;
            document.querySelector('.imgName').value=img;
        }
    }

    
</script>
</html>