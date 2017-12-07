package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ThongKeDangKy
 */
@WebServlet("/admin/thong-ke-dang-ky")
public class ThongKeDangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String sql = "SELECT  classes.Id, schedules.ThoiGian, schedules.DiaDiem, classes.NgayKhaiGiang " + 
      		"FROM trungtamtinhoc.classes, trungtamtinhoc.schedules " + 
      		"where classes.LichHoc = schedules.Id;";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThongKeDangKy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
