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
<title>Insert title here</title>
 <script src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/location.js"></script>
<script type="text/javascript" src="<%=basePath %>js/YLChinaArea.js"></script>
<script type="text/javascript">

	
</script>
</head>
<body>
       <h5>请选择区域:</h5>
       <form>
           <div id="ChinaArea">
           	<select class="form-control" id="province" name="province" style="display:inline;width:100px;"></select> 
           	<select class="form-control" id="city" name="city" style="display:inline;width:100px;"></select>
           	<select class="form-control" id="district" name="district" style="display:inline;width:100px;"></select>
           	<button></button>
           </div>
           <input type="hidden" name="bianhao" id="bianhao"/>
          <button type="button" id="submitmyaccount" >创建新账号</button>
           </form>
           <script type="text/javascript">
           $(function(){
        		/*
        		 * 初始化地区选择插件
        		 */
        		if ($("#ChinaArea").length > 0) {
        			$("#ChinaArea").jChinaArea({
        				aspnet : false,
        				s1 : "上海市", // 默认选中的省名
        				s2 : "上海市", // 默认选中的市名
        				s3 : "黄浦区" // 默认选中的县区名
        			});
        		}}
          
        	)  
        register = function() {
		var province = $('#province').find("option:selected").text();
		var city = $('#city').find("option:selected").text();
		var district = $('#district').find("option:selected").text();
		function getbianhao(){
	        document.getElementById("bianhao").value=$("#mycomment1").attr("value");
	    }
		alert(province)
	    }, $("#submitmyaccount").bind("click", function() {
		register();
	});
  </script>
</body>
</html>