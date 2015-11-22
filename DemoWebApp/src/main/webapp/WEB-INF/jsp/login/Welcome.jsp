<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<script type="text/javascript">

	function submitWelcomeForm()  {
			$("#WelcomeForm").submit();   
	}			
</Script>
<body>

<form id="WelcomeForm" name="WelcomeForm" method="post" action="/DemoWebApp/login/Welcome.html">
<table style="width: 90%;">
	<tr>
		<td>
			<img alt="Newt Global DevOps Demo" src="/images/header.jpg" style="border: none;">
			<img alt="Newt Global DevOps Demo" src="/images/jenkins.png" style="border: none;">
			<img alt="Newt Global DevOps Demo" src="/images/jenkins.jpg" style="border: none;">
			<img src="<c:url value="images/header.jpg"/>"/>
		</td>		
	</tr>
	<tr>
		<td>
			<h2>Newt Global DevOps Demo WebApp.</h2>
			<h3>${msg}</h3>
		</td>		
	</tr>	
	<tr>
		<td>		
			<table style="width: 400px;border:1px">
				<tr>
					<td style="width: 50%; align:center;" colspan="2">
						<c:if test="${loginStatus == 'guest'}">						
							<span style="color:blue">Please enter Login Credentials&nbsp;</span>
						</c:if>						
						<c:if test="${loginStatus == 'fail'}">						
							<span style="color:red">Invalid username or password, please try again&nbsp;</span>
						</c:if>
						<c:if test="${loginStatus == 'pass'}">						
							<span style="color:green">You have login successfully&nbsp;</span>
						</c:if>						
					</td>				
				<tr>			
				<tr>
					<td style="width: 50%; align:right;">Username:</td>
					<td style="width: 50%; align:left;"><input id="usrname" type="text" name="usrname" value="${username}"/></td>
				</tr>
				<tr>
					<td style="width: 50%; align:right;">Password:</td>
					<td style="width: 50%; align:left;"><input id="pwd" type="text" name="pwd" value="${password}"/></td>
				</tr>	
				<tr>
					<td style="width: 50%; align:center;" colspan="2">
					    <input type="reset" value="Reset"/>&nbsp;
						<input type="submit" onClick="submitWelcomeForm();"  value="Login"/>											
					</td>
				</tr>							
			</table>			
		</td>		
	</tr>	
</table>

</form>
</body>
</html>