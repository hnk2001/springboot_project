
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com-->
<html xmlns:th="http://www.thymeleaf.org" >
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Registration or Sign Up form in HTML CSS | CodingLab </title>
    <link rel="stylesheet" href="style.css">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #4070f4;
}
.wrapper{
  position: relative;
  max-width: 430px;
  width: 100%;
  background: #fff;
  padding: 34px;
  border-radius: 6px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.2);
}
.wrapper h2{
  position: relative;
  font-size: 22px;
  font-weight: 600;
  color: #333;
}
.wrapper h2::before{
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 28px;
  border-radius: 12px;
  background: #4070f4;
}
.wrapper form{
  margin-top: 30px;
}
.wrapper form .input-box{
  height: 30px;
  margin: 18px 0;
}
form .input-box input{
  height: 100%;
  width: 100%;
  outline: none;
  padding: 0 15px;
  font-size: 17px;
  font-weight: 400;
  color: #333;
  border: 1.5px solid #C7BEBE;
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
}
.input-box input:focus,
.input-box input:valid{
  border-color: #4070f4;
}
form .policy{
  display: flex;
  align-items: center;
}
form h3{
  color: #707070;
  font-size: 14px;
  font-weight: 500;
  margin-left: 10px;
}
.input-box.button input{
  color: #fff;
  letter-spacing: 1px;
  border: none;
  background: #4070f4;
  cursor: pointer;
}
.input-box.button input:hover{
  background: #0e4bf1;
}
form .text h3{
 color: #333;
 width: 100%;
 text-align: center;
}
form .text h3 a{
  color: #4070f4;
  text-decoration: none;
}
form .text h3 a:hover{
  text-decoration: underline;
}
    </style>
   </head>
<body>
  <div class="wrapper" >
    <h2>Edit Employee Details</h2>
    <form th:action="@{/updateEmployee}"  th:object="${employee}" method="post">
        
        <div class="input-box" >
            <input type="text" readonly id="id" th:value="${employee.id}" th:field="*{id}" required>
          </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your name" id="name"  th:value="${employee.name}" th:field="*{name}" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your email" id="email"  th:value="${employee.email}" th:field="*{email}" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your gender" id="gender"  th:value="${employee.gender}" th:field="*{gender}" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your designation" id="designation" th:value="${employee.designation}" th:field="*{designation}" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your department" id="department" th:value="${employee.department}" th:field="*{department}" required>
      </div>
      <div class="input-box">
        <input type="tel" placeholder="Enter your contact" id="contact" maxlength="10" th:value="${employee.contact}"  th:field="*{contact}"  required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your city" id="city" th:value="${employee.city}" th:field="*{city}" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your country" id="country" th:value="${employee.country}" th:field="*{country}" required>
      </div>
      <div class="input-box">
        <input type="tel" placeholder="Enter your zip" id="zip" maxlength="6" th:value="${employee.zip}" th:field="*{zip}" required>
      </div>
        <input hidden  id="recordCreated" th:value="${employee.recordCreated}" th:field="*{recordCreated}" required>
      
      <div class="input-box button">
        <input type="Submit" value="Update Employee Details">
      </div>
    </form>
  </div>

</body>
</html>
