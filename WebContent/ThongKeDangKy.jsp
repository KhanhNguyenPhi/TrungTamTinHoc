<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/Fragment/LibImport.jsp" />
<link rel="stylesheet" href="/TrungTamTinHoc/Styles/Admin/ThongKeDangKy.css">
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
					<!-- <div class="link">
						<a href="#">Luyện Thi Chứng chỉ Ứng Dụng CNTT Cơ bản<span>
								- 14 tiết</span>
						</a>
					</div>
					<div class="paid">Học phí : 500.000 đ</div>
					<div class="faculty">
						<p>
							<strong>(cấp Chứng chỉ ỨNG DỤNG CNTT CƠ BẢN của Bộ GDĐT
								thay cho Chứng chỉ ABC theo Thông tư liên tịch số
								17/2016/TTLT-BGDĐT-BTTTT)</strong>
						</p>
						<p>
							<em>Điều kiện học: HV đã có Chứng chỉ A hoặc phải đạt trình
								độ tương đương Chứng chỉ A</em>
						</p>
					</div> -->

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