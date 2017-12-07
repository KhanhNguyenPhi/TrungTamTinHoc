<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/Fragment/LibImport.jsp"/>
<script type="text/javascript">
$(document).ready(function() {
	$('[data-toggle="popover"]').popover();
		
	$('.btn-container').click(function(event) {
		subjectInput = $('#subject')[0];
		titleInput = $('#title')[0];
		urlInput = $('#url')[0];
		imageInput = $('#image')[0];
		
		validator.validate(subjectInput, titleInput, urlInput, imageInput);
		
		if(!validator.isValid()) {
			subjectInput.setAttribute('data-content', validator.subjecErr);
			titleInput.setAttribute('data-content', validator.titleErr);
			urlInput.setAttribute('data-content', validator.urlErr);
			$('#btn-select-image').attr('data-content', validator.imageErr);
			
			$('[data-toggle="popover"]').popover('show');​​​​​​​​​​​​​​​​​​​​​​​​
			
			event.preventDefault();
		}		
	});
	
	$(document).click(function(event) {
		var btn = $('#submit-btn');
		if(!btn.is(event.target)) {
			$('#subject, #title, #url, #btn-select-image').popover('hide');
		}
		
	});	
});

var validator = {
		subjecErr: '',
		titleErr: '',
		urlErr: '',
		imageErr: '',
		validate: function(subjectInput, titleInput, passwordInput, confirmPassInput) {
			this.subjecErr = subjectValidate(subjectInput);
			this.titleErr = titleValidate(titleInput);
			this.urlErr = urlValidate(urlInput);
			this.imageErr = imageValidate(imageInput);
		},
		isValid: function() {
			return !this.subjecErr && !this.titleErr && !this.urlErr && !this.imageErr;
		}
}

function checkEmpty(input) {
	if(input.value.trim()) {
		return false;
	}
	return true;
}
function subjectValidate(input) {
	if(checkEmpty(input)) {
		return 'Vui lòng nhập chủ đề';
	}
	return '';
}
function titleValidate(input) {
	if(checkEmpty(input)) {
		return 'Vui lòng nhập tiêu đề';
	}
	return '';
}
function urlValidate(input) {
	if(checkEmpty(input)) {
		return 'Vui lòng nhập đường dẫn';
	}
	if(input.value.contains(' '))
		return 'Cấu trúc đường dẫn hợp lệ: duong-dan-example)';
	return '';
}
function imageValidate(input) {
	if(input.files.length == 0) {
		return 'Vui lòng chọn hình ảnh';
	}
	return '';
}
</script>
<style type="text/css">

</style>
</head>
<body class="interact-body">
<div class="interact row mx-auto">
	  <div class="col-lg-4 col-md-3 col-sm-3"></div>
	  <div class="frame col-lg-4 col-md-5 col-sm-6 my-auto">
		  	<div class="nav">
		      <ul class="links  mx-auto">
		        <li class="active"><a class="tab">Hoàn tất</a></li>
		        <li class="inactive"><a class="tab">Công việc khác</a></li>
		      </ul>
		    </div>
		    <div>
				<form class="form-interact" action="ThemTinTuc" method="post" name="form">
			          <label for="username">Chủ đề</label>
			          <input class="form-styling" type="text" name="subject" placeholder="" 
			          data-toggle="popover" data-content="" id="subject"/>
			          <label for="password">Tựa đề</label>
			          <input class="form-styling" type="text" name="tilte" placeholder=""
			          data-toggle="popover" data-content="" id="title"/>
			          <label for="password">Đường dẫn</label>
			          <input class="form-styling" type="text" name="url" placeholder=""
			          data-toggle="popover"  data-content="" id="url"/>
			          <label for="password">Ảnh chủ đề</label>
			          <input type="file" name="image" accept="image/x-png,image/gif,image/jpeg" id="image"/>			          
    				  <button id="btn-select-image" class="btn btn-success"
    				   data-toggle="popover" data-content="">Chọn ảnh</button>
    				  <span id="image-name">Chưa có ảnh</span>
			          <br>
			          <br>
					  <img class="subject-image" src="#" alt="Ảnh chủ đề" >										  
			          <div class="btn-container">
			            <a class="btn-save">Lưu bài viết</a>
			          </div>
		          </form>
		     </div>
		</div>
	</div>
</body>
</html>