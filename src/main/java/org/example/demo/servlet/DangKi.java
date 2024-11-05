package org.example.demo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo.dao.KhachHangDAO161;
import org.example.demo.model.DiaChi161;
import org.example.demo.model.HoaDonXuat161;
import org.example.demo.model.KhachHang161;
import org.example.demo.model.Ten161;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;

@WebServlet(name = "dangki", urlPatterns = "/dang-ki")
public class DangKi extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/gdDangKiThanhVien161.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String sdt = request.getParameter("sdt");

        String ngaySinhStr = request.getParameter("ngaysinh");
        LocalDate localDate = LocalDate.parse(ngaySinhStr);
        Date ngaySinh = Date.valueOf(localDate);

        String ho = request.getParameter("ho");
        String tenDem = request.getParameter("tendem");
        String ten = request.getParameter("ten");

        String soNha = request.getParameter("sonha");
        String toaNha = request.getParameter("toanha");
        String xomPho = request.getParameter("xompho");
        String xaPhuong = request.getParameter("xaphuong");
        String quanHuyen = request.getParameter("quanhuyen");
        String tinhThanh = request.getParameter("tinhthanh");

        Ten161 newTen = new Ten161(ho, ten, tenDem);
        DiaChi161 newDiaChi = new DiaChi161(0, soNha, toaNha, xomPho, xaPhuong, quanHuyen, tinhThanh);
        KhachHang161 newKH = new KhachHang161(0, username, password, ngaySinh, email, sdt, newTen, newDiaChi, new HoaDonXuat161[0]);

        try {
            KhachHangDAO161 dao = new KhachHangDAO161();
            dao.luuKhachHang(newKH);

            request.getSession().setAttribute("message", "Đăng ký thành công!");
        } catch (RuntimeException e) {
            request.getSession().setAttribute("error", e.getMessage());
        }

        response.sendRedirect("gdDangKiThanhVien161.jsp");
    }
}
