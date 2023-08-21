<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link rel="stylesheet" href="styles.css"> -->
<style>
    body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}

.container {
  background-color: #fff;
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  width: 100%;
  max-width: 400px;
}

.registration-form {
  display: flex;
  flex-direction: column;
}

.input-group {
  margin-bottom: 15px;
}

label {
  font-weight: bold;
}

input[type="text"],
input[type="email"],
input[type="tel"],
textarea {
  width: 100%;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

button {
  background-color: #007bff;
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
}

button:hover {
  background-color: #0056b3;
}
 a{
            text-decoration: none;
    color: white;
        }

</style>
<title>Registration Form</title>
</head>
<body>
<div class="container">
<h1 style="color: green;">${save }</h1>
  <form class="registration-form" action="registrationform">
    <h2>Registration Form</h2>
    <div class="input-group">
      <label for="name">Name</label>
      <input type="text" id="name" name="name" value="${name }"  required>
    </div>
    <div class="input-group">
      <label for="id">ID</label>
      <input type="number" id="id" name="id" value="${id }" required>
    </div>
    <div class="input-group">
      <label for="age">Age</label>
      <input type="number" id="age" name="age" value="${age }" required>
    </div>
    <div class="input-group">
      <label for="gender">Gender</label>
      <input type="radio" id="gender" name="gender" value="male" required>MALE
    <input type="radio" id="gender" name="gender" value="female" required>FEMALE
     </div>
    <div class="input-group">
      <label for=designation>Designation</label>
      <input type="text" id="designation" name="designation" value="${designation }"  required>
    </div>
    <div class="input-group">
      <label for="email">Email</label>
      <input type="email" id="email" name="email" value="${email }" required onchange="validateEmail()">
    
      <p id="emailError" style="color: red;"></p></div>
    <div class="input-group">
      <label for="phone">Phone Number</label>
      <input type="tel" id="phone" name="mobile" value="${mobile }"  required onchange="validatePhone()">
      <p id="phoneError" style="color: red;"></p></div>
    
    <div class="input-group">
      <label for="address">Address</label>
      <textarea id="address" name="address" rows="4" value="${address }" required></textarea>
    </div>
    <button type="submit">Register</button> <br><button type="reset">Reset</button>
  </form>
  <br>
  <button><a href="Admin.jsp">Back</a></button>
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

  function validatePhone(){
    var phoneInput=document.getElementById("phone");
    var phoneError=document.getElementById("phoneError")
var phone=phoneInput.value;
    var phonepattern=/^[0-9]{10}$/;
    if (phonepattern.test(phone)) {
      phoneError.textContent="";
    } else {
      phoneError.textContent="enter the 10 digits number";
    }
  }
  </script>
</body>
</html>