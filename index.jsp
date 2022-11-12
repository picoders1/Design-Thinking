<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html>  
<head>  
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<style>  

body{  
  font-family: Calibri, Helvetica, sans-serif;  
  
  background-image: url('624111.webp');
}  
.container {  
    margin-top: 30vh;
  background-color: lightblue;
  border: 1px solid black;
  opacity: 0.95;
    position: absolute;
	top: 50%;
	left: 50%;
	margin-right: -50%;
	transform: translate(-50%, -50%);
    width: 50%;
  padding: 50px;  
}  
  
input[type=text], textarea {  
  width: 100%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>  
</head>  
<body>  
<form action="send_mail">  
  <div class="container">  
  <center>  <h1 style="font-size: 30px;"> Get Guidance</h1> </center>  
  <hr>  
  <label> Firstname </label>   
<input type="text" name="firstname" placeholder= "Firstname" size="15" required />   
<label> Middlename: </label>   
<input type="text" name="middlename" placeholder="Middlename" size="15" />   
<label> Lastname: </label>    
<input type="text" name="lastname" placeholder="Lastname" size="15"/>   
<div>  
    <label>   
    Gender :  
    </label><br>  
    <input type="radio" value="Male" name="gender" checked > Male   
    <input type="radio" value="Female" name="gender"> Female   
    <input type="radio" value="Other" name="gender"> Other  
    </div> 

<div>  
    <label>   
    Food choice :  
    </label><br>  
    <input type="radio" value="Vegetarian" name="food" checked > Vegetarian   
    <input type="radio" value="Non-vegetarian" name="food"> Non-vegetarian   
    <input type="radio" value="Both vegan and non-vegetariam" name="food"> Both 
    </div> 

<div>
        <label for="Age">Age (between 5 and 100):</label>
        <input type="number" id="Age" name="age" min="5" max="100" placeholder="Age" required>
    </div>
    <div> 
<label>   
Problem related to :  
</label>   
  
<select name="problem">  
<option value="Brain">Brain</option>  
<option value="Heart">Heart</option>  
<option value="Skin">Skin</option>  
<option value="Teeth">Teeth</option>  
<option value="Lungs">Lungs</option>
<option value="Bone">Bone</option>  
<option value="Genitals">Genital</option> 
<option value="Depression">Depression</option>  
</select>
</div>
<div>
<label>   
    Financial situation :  
    </label>   
      
    <select name="income">  
    <option value="poor">poor[Rs.50000 per annum]</option>  
    <option value="average">average[Rs.1-2Lakh per annum]</option>  
    <option value="above_average">above average[Rs.6-8Lakh per annum]</option>  
    <option value="rich">rich</option> 
    </select>
</div>
<div>
    <label>   
        Height :  
        </label>   
          
        <select name="Height" style="width: 200px;">  
        <option value="4'0ft">4'0ft</option>
        <option value="4'1ft">4'1ft</option> 
        <option value="4'2ft">4'2ft</option> 
        <option value="4'3ft">4'3ft</option> 
        <option value="4'4ft">4'4ft</option> 
        <option value="4'5ft">4'5ft</option> 
        <option value="4'6ft">4'6ft</option> 
        <option value="4'7ft">4'7ft</option> 
        <option value="4'8ft">4'8ft</option> 
        <option value="4'9ft">4'9ft</option> 
        <option value="4'10ft">4'10ft</option> 
        <option value="4'11ft">4'11ft</option> 
        <option value="5'0ft">5'0ft</option>
        <option value="5'1ft">5'1ft</option> 
        <option value="5'2ft">5'2ft</option> 
        <option value="5'3ft">5'3ft</option> 
        <option value="5'4ft">5'4ft</option> 
        <option value="5'5ft">5'5ft</option> 
        <option value="5'6ft">5'6ft</option> 
        <option value="5'7ft">5'7ft</option> 
        <option value="5'8ft">5'8ft</option> 
        <option value="5'9ft">5'9ft</option> 
        <option value="5'10ft">5'10ft</option> 
        <option value="5'11ft">5'11ft</option> 
        <option value="6'0ft">6'0ft</option>
        <option value="6'1ft">6'1ft</option>  
        <option value="6'2ft">6'2ft</option>  
        <option value="6'3ft">6'3ft</option>  
        <option value="6'4ft">6'4ft</option>  
        <option value="6'5ft">6'5ft</option>  
        <option value="6'6ft">6'6ft</option>  
        <option value="6'7ft">6'7ft</option>      
        </select>
</div> 
<div>
    <label for="Weight">Weight (between 10kilo and 200kilo):</label>
    <input type="number" id="Weight" name="Weight" min="10" max="200" placeholder="Weight" required>
</div> 
 
<label>   
Phone :  
</label>  
<input type="text" name="country_code" placeholder="Country Code"  value="+91" size="2"/>   
<input type="text" name="phone" placeholder="phone no." size="10" required>   
Explain your problem :  
<textarea cols="80" rows="5" name="problem_definition" placeholder="Problem you are facing right now" required>  
</textarea>

 <label for="email"><b>Email</b></label>  
 <input type="text" placeholder="Enter Email" name="email" required>  
  
    <input type="submit" value="Get help" class="registerbtn"/> 
    </div>  
</form>  
</body>  
</html>  