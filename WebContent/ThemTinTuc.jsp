<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/Fragment/LibImport.jsp"/>
<script type="text/javascript" src="/TrungTamTinHoc/Assets/tinymce/tinymce.min.js">
</script>
<script type="text/javascript">
	tinymce.init({
		selector : 'textarea.tinymce',
		height : 500,
		theme : 'modern',
		plugins : 'print preview fullpage searchreplace autolink directionality visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists textcolor wordcount imagetools contextmenu colorpicker textpattern help',
		toolbar1 : 'formatselect | bold italic strikethrough forecolor backcolor | link | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | removeformat',
		image_advtab : true,
		templates : [ {
			title : 'Test template 1',
			content : 'Test 1'
		}, {
			title : 'Test template 2',
			content : 'Test 2'
		} ],
		content_css : [
				'//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
				'//www.tinymce.com/css/codepen.min.css' ]
	});
	$(document).on("click", "#btn-get-data", function(event){
		if("Lấy bài viết".localeCompare($('#btn-get-data').val()) == 0){
			var content = tinymce.get("texteditor").getContent();
			$('#content').val(content);
			$('#data-container').html(content);	
			$(this).val('Lưu bài viết');
			$(this).addClass('btn-success');
			return false;
		}
		else{
			$(this).removeClass('btn-success');
			$('.tin-tuc').css("transition", "");
			$('.interact .frame').css("opacity", 1);
			$('.interact .frame').css("visibility", "visible");
			$('.interact .frame').css("z-index", 2);	
			$('.tin-tuc').css("z-index", -1);	
		}
	});
	
	$(document).click(function(event) {
		 var target = $(event.target);
		if(!target.parents(".frame").length && !target.is($('#btn-get-data')) && !target.hasClass('frame')) {	
			$('.tin-tuc').css("transition", "z-index 1s linear");
			$('.interact .frame').css("opacity", 0);
			$('.interact .frame').css("visibility", "hidden");
			$('.interact .frame').css("z-index", -1);	
			$('.tin-tuc').css("z-index", 1);
			$('#btn-get-data').val('Lấy bài viết');
		}
		
	});
	
	window.onbeforeunload = function(event)
    {
        return confirm("Các dữ liệu soạn thảo của bạn sẽ bị mất!!!");
    };
    $(document).ready(function(){
	    	if(${urlCheck == 0} && ${isChecked != null}){
	    		setTimeout(function() {
		    		$('.tin-tuc').css("transition", "");
					$('.interact .frame').css("opacity", 1);
					$('.interact .frame').css("visibility", "visible");
					$('.interact .frame').css("z-index", 2);	
					$('.tin-tuc').css("z-index", -1);
					
					urlInput = $('#url')[0];
		    		urlInput.setAttribute('data-content', "Đường dẫn đã tồn tại!(Mẹo: thêm chữ số phía sau đường dẫn.)");
		    		$('#url').popover('show');
	    		}, 800);
				
				$('.interact .frame').css('transition', '');
	    		
	    		$('#subject').val('${returnSubject}');
	    		$('#title').val('${returnTitle}');
	    		$('#url').val('${returnUrl}');
	    		$('#content').val('${returnContent}');
				
	    			
	    	}
    });
</script>
<style>
.tin-tuc{
	height: 100vh;
	position: relative;
	animation: move 0.5s linear;
}
@keyframes move{
  from { z-index: -1;}
  to { z-index: 1;}
}
#get-data-form #btn-get-data{
	width: 100%;
}
</style>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:include page="/Interactive-Form.jsp" />
<div class="tin-tuc">
	<form id="get-data-form" method="post">
		<textarea class="tinymce" id="texteditor"></textarea>
		<div class="mx-auto" style="width:105px;">
			<input id="btn-get-data" class="btn btn-primary" type="button" value="Lấy bài viết">
		</div>
	</form>
	<div id="data-container" class="mx-auto mt-5" style="width:90vw;">	
	</div>
</div>
</body>
</html>
