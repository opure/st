<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	String basepath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
	String basePath = request.getScheme() + "://"
		+ request.getServerName() + ":" + request.getServerPort()
		+ request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JQueryTest！</title>
 <script src="<%=basePath%>js/jquery.min.js"></script>
</head>
<body>
<input type="text" name="id1" id="id1" value="zz"/>
<input type="text" name="ddid1" id="id1" value="zz"/>
 <div>dfaff</div>
 <div>daff</div>
<script type="text/javascript">
var name=$('[name$=id1]');
alert(name);
</script>

</body>
</html>