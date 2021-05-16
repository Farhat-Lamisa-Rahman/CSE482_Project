<!DOCTYPE html>
<html>
    
<head>

    <!-- this line links you css file(s) to this html. put css file name as a value of attr href  -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    
</head>

<body>

     <form action="index.php" method="post"  >
         <input type='text'class='input-field' name="First-Name" placeholder='First-Name' required>
         <input type='text'class='input-field' name="Last-Name" placeholder='Last-Name ' required>
         <input type='Email'class='input-field' name="email" placeholder='Email Id' required>
         <input type='text'class='input-field' name="Password" placeholder='Enter Password' required>
         <input type='text'class='input-field' name="Confirm-Password" placeholder='Confirm Password'  required>
         <input type='checkbox'class='check-box' required><span>I agree to the terms and conditions</span>
         <button type='submit' name="submit"  value="submit" class='submit-btn' >Register</button>
    </form>
    
</body>

</html>
