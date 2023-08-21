<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:  #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .login-container h2 {
            margin-bottom: 20px;
        }
        .loginform input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .loginform button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
        a{
            text-decoration: none;
/*     color: white; */
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Signup</h2>
        <h3>${save }</h3>
        <form class="loginform" action="signup">
        <input type="text" placeholder="name" id="name" name="name" required>
            <input type="email" placeholder="Email" id="email" name="email" required onchange="validateEmail()">
           
            <p id="emailError" style="color: red;"></p>
            <input type="password" placeholder="Password" id="password" name="password" required onchange="validatePassword()">
         
          <p id="passwordError" style="color: red;"></p>
          <input type="password" placeholder="confirmPassword" id="confirmPassword" name="confirmPassword" required onchange="validateConfirmPassword()">
           <p id="confirmPasswordError" style="color: red;"></p>
<button type="submit">Submit</button> 
        </form>
         <br>
  <button><a href="Admin.jsp">Back </a></button>
        
    </div>
    
      <script>
function validateEmail(){
var emailInput=document.getElementById("email");
var emailError=document.getElementById("emailError");

var email=emailInput.value;
var emailPattern=/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

if(!emailPattern.test(email)){
emailError.textContent="Invalid email address";
}else{
emailError.textContent="";
}
}
function validatePassword(){
var passwordInput=document.getElementById("password");
var passwordError=document.getElementById("passwordError");
// var password=passwordInput.value;
// var length=8;
// var UpperCase=/[A-Z]/;
// var lowerCase=/[a-z]/;
// var num=/[0-9]/;
// var special=/[^A-Za-z0-9\s]/;

const password = passwordInput.value;
    const minLength = 8;
    const uppercaseRegex = /[A-Z]/;
    const lowercaseRegex = /[a-z]/;
    // const specialCharRegex = /[!@#$%^&*]/;
    const specialCharRegex =/[^A-Za-z0-9\s]/;
    

    const digitRegex = /[0-9]/;

    if (password.length < minLength) {
        passwordError.textContent = "Password must be at least 8 characters long.";
    } else if (!uppercaseRegex.test(password)) {
        passwordError.textContent = "Password must contain at least one uppercase letter.";
    } else if (!lowercaseRegex.test(password)) {
        passwordError.textContent = "Password must contain at least one lowercase letter.";
    } else if (!specialCharRegex.test(password)) {
        passwordError.textContent = "Password must contain at least one special character.";
    } else if (!digitRegex.test(password)) {
        passwordError.textContent = "Password must contain at least one digit.";
    } else {
        passwordError.textContent = "";
    }
}


function validateConfirmPassword(){
    debugger;
	var password=document.getElementById("password").value;
    
	var confirmPassword=document.getElementById("confirmPassword").value;
	var confirmPasswordError=document.getElementById("confirmPasswordError");
	if(confirmPassword != password){
        confirmPasswordError.textContent = "Confirm  password not match";
		}else{
        confirmPasswordError.textContent = "";}
}
    </script>
</body>
</html>




