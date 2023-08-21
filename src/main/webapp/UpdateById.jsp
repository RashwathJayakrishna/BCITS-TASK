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
  <form class="registration-form" action="updateById">
    <h2>Update By Id</h2>
    <h1 style="color: green;">${save }</h1>
    <div class="input-group">
      <label for="id">ID </label>
      <input type="text" id="id" name="id" required>
    </div>
    
    <button type="submit">submit</button>
     <br>
  <button><a href="Admin.jsp">Back </a></button>
  </form>
</div>
</body>
</html>
