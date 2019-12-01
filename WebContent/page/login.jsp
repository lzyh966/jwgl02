<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>       
    
<%@ taglib prefix="s" uri="/struts-tags" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%= basePath %>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>

	<link rel="stylesheet" type="text/css" href="css/base.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	
</head>
<body>
	<div class="wrapper">
		<s:form action="" method="post" theme="simple">	
			<div class="login">
				<div class="login-title">
					用户登录
				</div>
				
				<fieldset>
					<legend>账户信息</legend>
					<p>输入用户账户信息进行登录,若没有账户,请先<a href="">注册</a></p>
					<table>
						<tr>
							<td>用户名</td>
							<td>
								<s:textfield name="user.userName" cssClass="input_txt"></s:textfield>
							</td>
						</tr>
						
						<tr>
							<td>密码</td>
							<td>
								<s:password name="user.password" cssClass="input_txt"></s:password>
							</td>
						</tr>	
					</table>	
				</fieldset>				
				<s:submit value="提     交" cssClass="login_submit"></s:submit>
			</div>
		</s:form>
	</div>
</body>
</html>