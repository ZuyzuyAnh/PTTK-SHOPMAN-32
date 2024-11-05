package org.example.demo.servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.example.demo.dao.HangHoaDAO161;
import org.example.demo.dao.HangNhapDAO161;
import org.example.demo.dao.HoaDonDAO161;
import org.example.demo.model.HangHoa161;
import org.example.demo.model.HangNhap161;
import org.example.demo.model.HoaDonNhap161;
import org.example.demo.model.NhaCungCap161;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "nhapHangHoa", urlPatterns = "/nhap-hang-hoa")
public class ThemHangNhap extends HttpServlet {
    private final List<HangNhap161> listHangNhap = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/gdNhapHangHoa161jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String action = req.getParameter("action");

        switch (action) {
            case "addHangNhap":
                String tenHangHoa = req.getParameter("matHang");
                HangHoaDAO161 hangHoaDAO161 = new HangHoaDAO161();
                HangHoa161 hangHoa = hangHoaDAO161.getHangHoa(tenHangHoa);

                if (hangHoa != null) {
                    int soLuong = Integer.parseInt(req.getParameter("soLuong"));
                    float donGia = Float.parseFloat(req.getParameter("donGia"));

                    HangNhap161 hangNhap = new HangNhap161(soLuong, donGia, hangHoa, null);
                    listHangNhap.add(hangNhap);

                    req.getSession().setAttribute("listHangNhap", listHangNhap);
                    resp.sendRedirect("gdNhapHangHoa161.jsp");
                } else {
                    resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Mặt hàng không tồn tại");
                }
                break;
            case "saveHoaDon":
                HttpSession session = req.getSession();
                NhaCungCap161 nhaCungCap = (NhaCungCap161) session.getAttribute("nhaCungCap");
                HoaDonNhap161 hoaDonNhap = new HoaDonNhap161(0, null, "", nhaCungCap, null);

                HoaDonDAO161 hoaDonDAO = new HoaDonDAO161();
                hoaDonDAO.luuHoaDon(hoaDonNhap);

                HangNhapDAO161 hangNhapDAO = new HangNhapDAO161();
                for (HangNhap161 hangNhap : listHangNhap) {
                    hangNhap.setHoaDon(hoaDonNhap);
                    hangNhapDAO.luuHangNhap(hangNhap);
                }

                hoaDonNhap.setDsHangNhap(listHangNhap.toArray(new HangNhap161[0]));

                session.setAttribute("hoaDon", hoaDonNhap);
                req.getRequestDispatcher("/gdHoaDon161.jsp").forward(req, resp);  // Điều hướng tới trang hóa đơn
                break;
        }
    }
}
