<%@page import="model.pay"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
<link rel="stylesheet" href="View/bootstrap.min.css">
<script src="Components/jquery-3.4.0.min.js"></script>
<script src="Components/pay.js"></script>

</head>
<body>
<div class="container"><div class="row"><div class="col-6"> 
<h1>User Details Form</h1>
<input id="userID" name="userID" type="text"
class="form-control form-control-sm">
 User ID
<form id="formItem" name="formItem">
 <br> User Name
 <input id="userName" name="userName" type="text" 
 class="form-control form-control-sm">
 <br>  User NIC
 <input id="userNIC" name="userNIC" type="text" 
 class="form-control form-control-sm">
 <br> Contact Number
 <input id="contactnumber" name="contactnumber" type="text" 
 class="form-control form-control-sm">
 <br> User Type
 <input id="usertype" name="usertype" type="text" 
 class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
 <input type="hidden" id="hidpaymentIDSave"name="hidpaymentIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divItemsGrid">
 <%
 if (request.getParameter("userID") != null)
 { 
  pay itemObj = new pay(); 
  String stsMsg = ""; 
 //Insert--------------------------
 if (request.getParameter("hidpaymentIDSave") == "") 
  { 
  stsMsg = itemObj.insertItem(request.getParameter("userID"), 
  request.getParameter("userName"), 
  request.getParameter("userNIC"), 
  request.getParameter("contactnumber"),
  request.getParameter("usertype")); 
  } 
 else//Update----------------------
  { 
  stsMsg = itemObj.updateItem(request.getParameter("hidpaymentIDSave"), 
  request.getParameter("userID"), 
  request.getParameter("userName"), 
  request.getParameter("userNIC"), 
  request.getParameter("contactnumber"),
  request.getParameter("usertype")); 
  } 
  session.setAttribute("statusMsg", stsMsg); 
 } 
//Delete-----------------------------
if (request.getParameter("hidpaymentIDDelete") != null) 
{ 
pay itemObj = new pay(); 
String stsMsg = 
itemObj.deleteItem(request.getParameter("hidpaymentIDDelete")); 
session.setAttribute("statusMsg", stsMsg); 
}
 pay itemObj = new pay(); 
 out.print(itemObj.readItems()); 
 %>
</div>
</div> </div> </div> 



</body>
</html>