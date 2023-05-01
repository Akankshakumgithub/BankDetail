<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">

</style>
<style type="text/css">
html {
	font-size: 10px;
}

* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
	text-decoration: none;
}

body {
	width: 100%
}

.container {
	max-width: 900px;
	height: auto;
	/* border: 2px solid red; */
	border-radius:10px;
	margin: 3rem auto;
	display: flex;
	box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
	overflow:hidden;
	/* grid-template-columns: repeat(2, 1fr) */
}

.btn {
	font-size: 1.5rem;
	padding: 1rem 1rem;
	border-radius: 2.5rem;
	border: none;
    outline: none;
	text-align: center;
	color: black;
	box-shadow: rgba(0, 0, 0, 0.17) 0px -23px 25px 0px inset, rgba(0, 0, 0, 0.15) 0px -36px 30px 0px inset, rgba(0, 0, 0, 0.1) 0px -79px 40px 0px inset, rgba(0, 0, 0, 0.06) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
}

.btn1 {
	font-size: 1.5rem;
	padding: 0.5rem 0.5rem;
	width: 7rem;
	height: 3rem;
	text-transform: capitalize;
	border-radius: 2.5rem;
	border: none;
	text-align: center;
	color: #111213;
	transition: all 0.3s ease;
	 box-shadow: rgba(0, 174, 255, 0.17) 0px -23px 25px 0px inset, rgba(5, 109, 255, 0.555) 0px -36px 30px 0px inset, rgba(2, 91, 255, 0.188) 0px -79px 40px 0px inset, rgba(0, 0, 0, 0.06) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
}

.form-card-left {
	width: 40%;
	height: 100%;
	/* border: 1px solid green; */
	border-radius:10px;
	box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
}

.form-card-left .form-card {
	width: 100%;
	display: grid;
	grid-template-columns: repeat(2, 1fr);
}

.form-card .name, .address, .email,.phNo, .gender {
	grid-column-start: span 2;
	/* border: 1px solid; */
}

.form-card-left h3{
	margin-top:1.6rem;
	color: red;
	text-align: center;
}

.form-card .form-field {
	display: flex;
	flex-direction: column;
	padding: 20px;
}

.form-field label {
	font-size: 1.5rem;
}

.form-field input {
    box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
	border-radius: 2.5rem;
	outline: none;
	width: 100%;
	height: 3rem;
	padding: 0 10px;
	margin-top: 1rem;
}

::-webkit-input-placeholder{
	color:black;
}

.error-message{
	margin-top:0.6rem;
	color:red;
}


.form-field input:focus, button:focus {
	box-shadow: rgba(6, 109, 226, 0.412) 0px 0px 0px 3px;
}

.form-card .gender {
	flex-direction: column;
}

.gender select {
    box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
	border-radius: 2.5rem;
	outline: none;
	width: 100%;
	height: 3rem;
	padding: 0 10px;
	margin-top: 1rem;
}

.form-card-right {
	width: 60%;
	height: auto;
}

.form-right-container {
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: column;
}

.form-right-heading {
	margin-top: 10px;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	padding: 10px;
}

.form-right-heading button:hover {
	background-color: #339af0;
	color: #fff;
}

.form-right {
	width: 100%;
	display: grid;
	grid-template-columns: repeat(5, 1fr);
	grid-gap: 1rem;
	flex-direction: row;
	justify-content: space-between;
	padding: 10px;
	/* border: 1px solid green; */
}

.form-field-right {
	width: auto;
	height: 60px;
	display: flex;
	flex-direction: column;
}

.form-field-right select, input {
    box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
    border-radius:25px;
	padding: 5px;
	width: 100%;
	height: 3rem;
	margin-top: 0.5rem;
	outline: none;
	font-size: 1.5rem;
}

.form-field-right input:focus, select:focus {
	box-shadow: rgba(6, 109, 226, 0.412) 0px 0px 0px 3px;
}

.form-field-right label {
	font-size: 1.5rem;
}

.form-right .btns{
	align-items:center;
	position:relative;
}

.btns button{
	position:absolute;
	top:23px;
}

.form-card-right .btns button:hover {
	background-color: #339af0;
	color: #fff;
}

.error{
	border-color:red;
}

.errors{
	margin-top:0.6rem;
	color:red;
	font-size:1.3rem;
}


.show{
	display:block;
}

.hidden{
	border-color:#fff;
	display:none;
}

.show-border{
	border-color:red;
}

.hidden-border{
	border:none;
}


</style>
<title>Document</title>
</head>
<body>
	<form:form action="${pageContext.request.contextPath }/handle" id="form"
		class="container" method="post" modelAttribute="person">
		<div class="form-card-left">
		<h3 id="duplicateError">${duplicateError }</h3>
			<div class="form-card">
				<form:input type="hidden" path="id" />
				<h1 style="color: black;">Person Details</h1>
				<div class="form-field name">
					<label for="name">Name</label>
					<form:input id="name" path="name" placeholder="Enter Name....." />
				</div>
				<div class="form-field email">
					<label for="email">Email</label>
					<form:input id="email" path="email"  placeholder="Enter Email....." />
				</div>
				<div class="form-field address">
					<label for="address">Address</label>
					<form:input id="address" path="address" placeholder="Enter Address....." />
				</div>
				<div class="form-field">
					<a href="/" class="btn">Back</a>
				</div>
				<div class="form-field">
					<form:button type="submit" id="submit-btn" class="btn">
						<c:if test="${person.id == null }">Submit</c:if>
						<c:if test="${person.id != null }">Update</c:if>
					</form:button>
				</div>
				
			</div>
		</div>
		<div class="form-card-right">
		
			<div class="form-right-container">
			<h3 id="duplicateError">${duplicateError }</h3>
				<div class="form-right-heading">
					<h1>Account details</h1>
					<button type="button" id="add" class="btn1">add</button>
				</div>
				<c:forEach end="${accounts.size()==0?0:accounts.size()-1}" begin="0"  var="accounts" varStatus="loop">
					<div class="form-right">
						<form:input type="hidden" path="accounts[${loop.index }].id" id="id"/>
						 <div class="form-field-right bankname">
							<label for="accountname">Bank Name</label>
<!--   id="bankname"  id="mySelect" onchange="myFunction1()--> 
                          <form:select path="accounts[${loop.index }].bankname" id="bankname"  class="hidden-border">
							
								<form:option value="">Select..</form:option>
								<form:option value="SBI">SBI</form:option>
								<form:option value="HDFC">HDFC</form:option>
								<form:option value="ICICI">ICICI</form:option>
								<form:option value="KVG">KVG</form:option>
								<form:option value="RBI">RBI</form:option>
								
							</form:select>
							
							<span class="errors hidden">digits only</span>
						</div>
						<div class="form-field-right accountno">
							<label for="accountno">Account No.</label>
							<form:input type="number" path="accounts[${loop.index }].accountno"
								id="accountno" placeholder="account....." class="hidden-border" maxlength="12" title="Please enter valid account number"/>
								
								
						</div>
						<div class="form-field-right ifsccode">
							<label for="ifsccode">IFSC Code</label>
							<form:input type="number" path="accounts[${loop.index }].ifsccode"
								id="ifsccode" placeholder="code....." class="hidden-border"/>
										
						</div>
						
						
						<div class="form-field-right btns">
							<button type="button" id="delete" class="btn1">delete</button>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</form:form>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
	<script>
        $(document).ready(function () {
        	var index;
        	if($('form input[name=id]').val() == ''){
        		index = 1;
        	}else{
      			index = ${accounts.size()};
        	}
        	
        	/* this function add the new in adding new account  */
            $('#add').click(function () {
          
            	var newForm = $('.form-right:last').clone();
            	$('.form-right:last').each(function(){
            		let bankname = $(this).find('#bankname');
            		let accountno = $(this).find('#accountno');
            		let ifsccode = $(this).find('#ifsccode');
            		if(bankname.val() != "" && accountno.val() != "" && ifsccode.val() != ""){
            		resetAll(newForm);
            			newForm.find('#id').attr("name", "accounts[" + index + "].id").val('');
                  		newForm.find('#bankname').attr("name", "accounts[" + index + "].bankname").val('');
                  		newForm.find('#accountno').attr("name", "accounts["+index+"].accountno").val('');
                  		newForm.find('#ifsccode').attr("name", "accounts["+index+"].ifsccode").val('');
                       $('.form-right-container').append(newForm);
                        index++
                    }
            	});
            });
        	
        	
            $('.form-right').each(function(){
        		let accountnoVal = $(this).find('#accountno').val();
        		let ifsccodeVal = $(this).find('#ifsccode').val();
        		
        	})
        
            
            
            $(document).on('blur', '#accountno', function(){
            	let formRight = $(this).closest('.form-right');
            	let accountnoVal = formRight.find('#accountno').val();
            	let ifsccodeVal = formRight.find('#ifsccode').val();
            	
            
            });
            $(document).on('blur', '#ifsccode', function(){
            	let formRight = $(this).closest('.form-right');
            	let accountnoVal = formRight.find('#accountno').val();
            	let ifsccodeVal = formRight.find('#ifsccode').val();
           
            	
            });
        	
        	$('#submit-btn').click(function(event){
        		$('#form').valid();
        		validateAccount();
    			if(validateAccount() == false){
    				event.preventDefault(); 
    			}
        	})
        	
       	 $(document).on('click', '#delete', function (e) {
                 e.preventDefault();
                 if (index == 1) {
                    $('#bankname').val('');
                    $('#accountno').val('');
                    $('#ifsccode').val('');
                 } else {
                    index--;
                    $(this).parent().parent().remove();
                 }                
               }); 
           });
        	
        	
        function resetAll(selector){
    		selector.find('#bankname').addClass('hidden-border');
    		selector.find('#bankname').removeClass('show-border');
    		selector.find('#accountno').addClass('hidden-border');
    		selector.find('#accountno').removeClass('show-border');
    		selector.find('#ifsccode').addClass('hidden-border');
    		selector.find('#ifsccode').removeClass('show-border');
    		selector.find('.bankname').find('span').removeClass('show')
    		selector.find('.bankname').find('span').addClass('hidden')
    		selector.find('.accountno').find('span').removeClass('show')
        	selector.find('.accountno').find('span').addClass('hidden')
        	selector.find('.ifsccode').find('span').removeClass('show')
        	selector.find('.ifsccode').find('span').addClass('hidden')
    	}
        	
        	
        if($('#duplicateError').text() != ''){
    		$('#name').addClass('error');
    		$('#email').addClass('error');
    		$('#email').keyup(function(){
    			$(this).removeClass('error');
    			$('#duplicateError').text("");
    		})
    		$('#name').keyup(function(){
    			$(this).removeClass('error');
    			$('#duplicateError').text("");
    		})
    	}
        
        

        $('#form').validate({
        	errorPlacement:function(error, element){
        		error.addClass("error-message");
        		error.insertAfter(element);
        	},rules:{
        		name:{
        			required:true,
        			name:true
        		},email:{
        			required:true,
        			email:true
        		}, 
        		accountno:{
        			required:true,
        			maxlength:12,
        			
        		},ifsccode:{
        			required:true,
        			maxlength:6
        		}
        	},
        	messages:{
        		name:{
        			required:"Name is required",
        			name:"enter name"
        		
        		},email:{
        			required:"Email is required",
        			email:"Enter valid Email"
        		},
        	}
        });
           

        function myFunction1() {
        	  var x = document.getElementById("mySelect");
        	  x.remove(x.selectedIndex);
        	}
        
        
        
    </script>
</body>

</html>