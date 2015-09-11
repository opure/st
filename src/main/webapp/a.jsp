<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script src="<%=basePath%>/js/jquery.min.js" type="text/javascript"></script>
	<script src="<%=basePath%>/js/jquery.Jcrop.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="<%=basePath%>/js/jquery.Jcrop.css" type="text/css" />
	<script type="text/javascript">
    var x;
	var y;
	var width;
	var height;
	$(function(){
		var jcrop_api, boundx, boundy;
		<span style="color:#ff0000;">//使原图具有裁剪功能</span>
		$('#target').Jcrop({
			onChange: updatePreview,
			onSelect: updatePreview,
			aspectRatio: 1
		},function(){
			// Use the API to get the real image size
			var bounds = this.getBounds();
			boundx = bounds[0];
			boundy = bounds[1];
			// Store the API in the jcrop_api variable
			jcrop_api = this;
		});
		<span style="color:#ff0000;">//裁剪过程中，每改变裁剪大小执行该函数</span>
		function updatePreview(c){
			if (parseInt(c.w) > 0){	
				$('#preview').css({
					width: Math.round(<span style="color:#ff0000;">200 </span>/ c.w * boundx) + 'px',  
				    height: Math.round(<span style="color:#ff0000;">200 </span>/ c.h * boundy) + 'px',
					marginLeft: '-' + Math.round(200 / c.w * c.x) + 'px',
					marginTop: '-' + Math.round(200 / c.h * c.y) + 'px'
				});
				<span style="color:#ff0000;">$('#width').val(c.w);  //c.w 裁剪区域的宽
				$('#height').val(c.h); //c.h 裁剪区域的高
				$('#x').val(c.x);  //c.x 裁剪区域左上角顶点相对于图片左上角顶点的x坐标
				$('#y').val(c.y);  //c.y 裁剪区域顶点的y坐标</span>
			}
		  };
	});
  </script>
</head>
<body>
<form action="cutPic.action" method="post">
	点击
	<input type="hidden" name="image.x" id="x"/>
	<input type="hidden" name="image.y" id="y"/>
	<input type="hidden" name="image.width" id="width"/>
	<input type="hidden" name="image.height" id="height"/>
	<input type="submit" value="确定" />
	，设置完成。
</form>
预览：
<div style="width:200px;height:200px;overflow:hidden; border:1px solid gray;">
   <img id="preview" width="200px" height="200px" />
</div>	
原图：
   <img src="../uploadpic/上传大图.jpg" id="target" alt="" />
</body>
</html>