 $(document).ready(function() 
{ 
if ($("#alertSuccess").text().trim() == "") 
 { 
 $("#alertSuccess").hide(); 
 } 
 $("#alertError").hide(); 
}); 
// SAVE ============================================
$(document).on("click", "#btnSave", function(event) 
{ 
// Clear alerts---------------------
 $("#alertSuccess").text(""); 
 $("#alertSuccess").hide(); 
 $("#alertError").text(""); 
 $("#alertError").hide(); 
// Form validation-------------------
var status = validateItemForm(); 
if (status != true) 
 { 
 $("#alertError").text(status); 
 $("#alertError").show(); 
 return; 
 } 
// If valid------------------------
 $("#formItem").submit(); 
}); 
// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event) 
{ 
 $("#hidpaymentIDSave").val($(this).closest("tr").find('#hidpaymentIDUpdate').val()); 
 $("#userName").val($(this).closest("tr").find('td:eq(0)').text()); 
 $("#userNIC").val($(this).closest("tr").find('td:eq(1)').text()); 
 $("#contactnumber").val($(this).closest("tr").find('td:eq(2)').text()); 
 $("#usertype").val($(this).closest("tr").find('td:eq(3)').text()); 
}); 
// CLIENT-MODEL================================================================
function validateItemForm() 
{ 
// UserName
if ($("#userName").val().trim() == "") 
 { 
 return "Insert the User Name."; 
 } 
// NIC
if ($("#userNIC").val().trim() == "") 
 { 
 return "Insert the Users NIC ."; 
 } 
 
// ContactNumber-------------------------------
if ($("#contactnumber").val().trim() == "") 
 { 
 return "Insert the Contact Number."; 
 } 
 
// UserTpe------------------------
if ($("#usertype").val().trim() == "") 
 { 
 return "Insert the User Type."; 
 } 
return true; 
}
