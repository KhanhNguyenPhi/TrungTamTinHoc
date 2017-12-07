<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/Fragment/LibImport.jsp" />
<style type="text/css">
.container-fluid{
	width: 90vw;
}
.blocked {
	text-align: center;
	width: 90vw;
	margin: 0 auto;
}

h1 {
	color: #FD6504;
}

.note {
	text-align: left;
	color: #1687c5;
}

h3 {
	margin-top: 0;
	margin-bottom: 2px;
}

p {
	margin-b0ttom: 2px;
}

.table-bar {
	width: 100%;
	background-color: #1687c5;
	border: 1px solid #fff;
	border-radius: 4px;
}

.table-title {
	color: #fff;
	text-align: left;
	margin-top: 2px;
	margin-bottom: 10px;
	padding-top: 10px;
	padding-left: 5px;
	font-size:
}

.table-data a {
	text-decoration: none;
	color: #ff0000;
}

.table-data {
	width: 100%;
	text-align: left;
	border: 2px solid #eee;
	border-radius: 4px;
}

.paid {
	font-weight: bold;
	padding-left: 5px;
}

.faculty {
	padding-left: 5px;
}

.link {
	width: 100%;
	padding-left: 5px;
}

.table-container {
	width: 100%;
}

.table {
	width: 100%;
}

@media ( max-width :576px) {
	img {
		width: 100%;
	}
	td{
		display: block;
		font-size: 0.8rem;
	}
	th{
		display: none;
	}
	tr td:nth-child(1)::before{
		content: "Lớp";
		display: inline-block;
		width: 30%;
	}	
	tr td:nth-child(2)::before{
		content: "Thời gian";
		display: inline-block;
		width: 30%;
	}
	tr td:nth-child(3)::before{
		content: "Ngày khai giảng";
		display: inline-block;
		width: 30%;
	}
	tr td:nth-child(4)::before{
		content: "Địa điểm";
		display: inline-block;
		width: 30%;
	}
	tr td:nth-child(5)::before{
		content: "         ";
		display: inline-block;
		width: 30%;
	}
}
.btn-dangky {
	border-radius: 4px;
}
.btn-dangky:hover{
	background-color: #FD6504 !important;
}
</style>
</head>
<body>
<div class="container-fluid">
	<div class="row">
			<div class="col-lg-12 blocked">
				<h1>Danh sách học viên từng lớp học</h1>
				<img src="/TrungTamTinHoc/Assets/Images/ngoisao_cam.png"> <br>
				<div class="table-bar">
					<h4 class="table-title">Luyện Thi Chứng chỉ Ứng Dụng CNTT Cơ
						bản</h4>
				</div>
				<div class="table-data">
					<div class="table-container">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>Lớp</th>
									<th>Thời gian</th>
									<th>Ngày khai giảng</th>
									<th>Địa điểm</th>
									<td></td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td scope="row">1</td>
									<td>Thứ 2-4-6 (13:30 - 17:00) (03 buổi)</td>
									<td>01/11/2017</td>
									<td>227 Nguyễn Văn Cừ, Q.5</td>
									<td><button type="button" class="btn-primary btn-dangky">Danh sách</button></td>
								</tr>
								<tr>
									<td scope="row">2</td>
									<td>Thứ 2-4-6 (13:30 - 17:00) (03 buổi)</td>
									<td>01/11/2017</td>
									<td>227 Nguyễn Văn Cừ, Q.5</td>
									<td><button type="button" class="btn-primary btn-dangky">Danh sách</button></td>
								</tr>
								<tr>
									<td scope="row">3</td>
									<td>Thứ 2-4-6 (13:30 - 17:00) (03 buổi)</td>
									<td>01/11/2017</td>
									<td>227 Nguyễn Văn Cừ, Q.5</td>
									<td><button type="button" class="btn-primary btn-dangky">Danh sách</button></td>
								</tr>
							</tbody>
						</table>										
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>