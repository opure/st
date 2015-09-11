<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Action 动态方法的调用</title>
</head>
<body>
<table width="350" align="center">
  <form action="loginReg!excute" >
  <tr>
  <td>用户名</td>
  <td> <input type="text" name="username"/></td>
  </tr>
  <tr>
  <td>密码</td>
  <td><input type="password" name="password"/></td>
  </tr>
  </form>
  ${name}
</table>

</body>
</html>