
function validation(string )
                {
                  
                    var y = String(document.getElementById("Enter-Password").value)
                    var z = String(document.getElementById("Confirm-Password").value)
                   
                    var a,b,c=0
               
                    const lowecase= new RegExp('(?=.*[a-z])')
                    const uppercase= new RegExp('(?=.*[A-Z])')

                    if(y.length>=8){
                        
                        alert("PASSWORD IS GREAT")
                    }
                    else {
                        alert("Password needs to be 8 characters");
                        return false;
                        
                           }
                    if(lowecase.test(y)){
                        
                        b=1
                    }
                    else {
                        alert("Password has no lowercase") ;
                             return false;}

                    if(uppercase.test(y)){
                        
                        c=1
                    }
                    else {alert("Password has no Uppercase")
                          }

                    if(y!=z)
                    {
                        alert("Passwords doesnt match ");
                        return false;
                    }

                 /*   var str = String(document.getElementById("phone").value);  
                    var n = str.startsWith("880");
                    if(n){ alert(str)}
                    else alert("Contact num incorrect")          */

                    
            

                }

         