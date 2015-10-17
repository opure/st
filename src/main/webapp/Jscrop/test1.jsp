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
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Basic Handler | Jcrop Demo</title>
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />

<script src="<%=basePath %>js/jquery.min.js"></script>
<script src="<%=basePath %>js/jquery.Jcrop.js"></script>
<script type="text/javascript">
  jQuery(function($){
    var jcrop_api;
    $('.target').Jcrop({
      onChange:   showCoords,
      onSelect:   showCoords,
      onRelease:  clearCoords
    },function(){
      jcrop_api = this;
    });

    $('#coords').on('change','input',function(e){
      var x1 = $('#x1').val(),
          x2 = $('#x2').val(),
          y1 = $('#y1').val(),
          y2 = $('#y2').val();
      jcrop_api.setSelect([x1,y1,x2,y2]);
    });

  });
  function showCoords(c)
  {
    $('#x1').val(c.x);
    $('#y1').val(c.y);
    $('#x2').val(c.x2);
    $('#y2').val(c.y2);
    $('#w').val(c.w);
    $('#h').val(c.h);
  };

  function clearCoords()
  {
    $('#coords input').val('');
  };
  
</script>
<link rel="stylesheet" href="<%=basePath %>/css/jquery.Jcrop.css" type="text/css" /> 
</head>
<body>
<img src="<%=basePath %>demo_files/sago.jpg" class="target" alt="[Jcrop Example]" />
    <form id="coords"
    class="coords"
    onsubmit="return false;"
    action="http://example.com/post.php">
    <div class="inline-labels">
    <label><input type="hidden" size="4" id="x1" name="x1" /></label>
    <label><input type="hidden" size="4" id="y1" name="y1" /></label>
    <label><input type="hidden" size="4" id="x2" name="x2" /></label>
    <label><input type="hidden" size="4" id="y2" name="y2" /></label>
    <label><input type="hidden" size="4" id="w" name="w" /></label>
    <label><input type="hidden" size="4" id="h" name="h" /></label>
    <P><input type="button" value="确认" id="crop_submit"/></P> 
    </div>
  </form>
    <div class="clearfix"></div>
</body>
</html>
