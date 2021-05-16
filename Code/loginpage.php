<!DOCTYPE html>
<html>
    
<head>

    <!-- this line links you css file(s) to this html. put css file name as a value of attr href  -->
    <link rel="stylesheet" href="loginpage.css" type="text/css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/977dd95728.js" crossorigin="anonymous"></script>

    <script type="text/javascript">
    

 function validation() {
     var con_password=document.getElementById("Confirm-Password").value.trim();
     var password=document.getElementById("Enter-Password").value.trim();
     var strings = password.toString();
     var numeric = 0;
     var upper =0;
     var lower =0;
     var character='';


   
     var y = String(document.getElementById("Enter-Password").value);


  
    if(con_password == password )
        {

        for(var i=0; i<strings.length;i++){
            character=strings.charAt(i);
            if(!isNaN(character*1)){
                numeric=1;
            }
            if (character == character.toUpperCase()){
                upper=1;
            }
            if(character == character.toLowerCase()){
                lower=1;
            }
        }



        if(numeric==0|| upper==0 || lower==0){

            alert('password must contain atleast one uppercase one lowercase and one numeric value');
            return false;
        }

        if(y.length<7 || y.length>20)
            {
                alert("Password must be minimum 7 character and maximum 20 characters");
            }
        }

        else
        { 
            alert("Password did not match");

            return false;
    
        }
    

 }
 
 </script>
</head>

<body>
    <div class="main_view_cont">

        <div class="main_view_top_cont">

            <div class="nav-bar">
                <div class="getkey">
                    <a href="website.html">Get Keys</a>
                </div>
    
            </div>

            
        </div>
      


    </div>


    <div class="bgimage">
        <div id='login-form'class='login-page'>
            <div class="form-box">
                <div class='button-box'>
                    <div id='btn'></div>
                    <button type='button'onclick='login()'class='toggle-btn'>Log In</button>
                    <button type='button'onclick='register()'class='toggle-btn'>Register</button>
                </div>
                <form action="LoginVerification.php" method="post"  id='login' class='input-group-login'>
                    <input type='Email'class='input-field' id="Email"  name="email" placeholder='Email Id' required>
                     <input type='password'class='input-field' id="Password" name="Password" placeholder='Enter Password' required>
                     <input type='checkbox'class='check-box'><span>Remember Password</span><br>
                     <button type='submit' name="submit" id="submit"  value="submit" class='submit-btn'>LOGIN</button>
                 </form>
                 <form action="post_registration_data.php" method="post" id='register' class='input-group-register' >
                 <input type='text'class='input-field' name="First-Name" placeholder='First-Name' required>
                     <input type='text'class='input-field' name="Last-Name" placeholder='Last-Name ' required>
                     <input type='Email'class='input-field' name="email" placeholder='Email Id' required>
                     <input type='password'class='input-field' name="Password" id="Enter-Password" placeholder='Enter Password' required>
                     <input type='password'class='input-field' name="Confirm-Password" id="Confirm-Password" placeholder='Confirm Password'  required>
                     <input type='checkbox'class='check-box' required><span>I agree to the terms and conditions</span>
                     <button type='submit' name="submit" id="submit"  value="submit" class='submit-btn' onclick="return validation()" >Register</button>
                     </form>
            </div>
        </div>
            
    </div>
</div>
<script>
    var x=document.getElementById('login');
    var y=document.getElementById('register');
    var z=document.getElementById('btn');
    function register()
    {
        x.style.left='-400px';
        y.style.left='50px';
        z.style.left='110px';
    }
    function login()
    {
        x.style.left='50px';
        y.style.left='450px';
        z.style.left='0px';
    }
</script>
<script>
    var modal = document.getElementById('login-form');
    window.onclick = function(event) 
    {
        if (event.target == modal) 
        {
            modal.style.display = "none";
        }
    }
</script>

   
    
</body>



</html>
