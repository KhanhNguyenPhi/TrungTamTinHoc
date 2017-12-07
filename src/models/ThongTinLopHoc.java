package models;

public class ThongTinLopHoc {
	public String maLop;
	public String thoiGian;
	public String diaiem;
	public String ngayKhaiGiang;
	
	public ThongTinLopHoc(String maLop, String thoiGian, String diaiem, String ngayKhaiGiang) {
		super();
		this.maLop = maLop;
		this.thoiGian = thoiGian;
		this.diaiem = diaiem;
		this.ngayKhaiGiang = ngayKhaiGiang;
	}
	public String getMaLop() {
		return maLop;
	}
	public void setMaLop(String maLop) {
		this.maLop = maLop;
	}
	public String getThoiGian() {
		return thoiGian;
	}
	public void setThoiGian(String thoiGian) {
		this.thoiGian = thoiGian;
	}
	public String getDiaiem() {
		return diaiem;
	}
	public void setDiaiem(String diaiem) {
		this.diaiem = diaiem;
	}
	public String getNgayKhaiGiang() {
		return ngayKhaiGiang;
	}
	public void setNgayKhaiGiang(String ngayKhaiGiang) {
		this.ngayKhaiGiang = ngayKhaiGiang;
	}
	
	
}
