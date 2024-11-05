package org.example.demo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo.dao.NhaCungCapDAO161;
import org.example.demo.model.NhaCungCap161;

import java.io.IOException;

@WebServlet(name = "nhaCungCap", urlPatterns = "/chon-nha-cung-cap")
public class ChonNhaCungCap extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/gdChonNhaCungCap161.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String tenNhaCungCap = req.getParameter("nhaCungCap");

        NhaCungCapDAO161 nhaCungCapDAO = new NhaCungCapDAO161();
        NhaCungCap161 nhaCungCap = nhaCungCapDAO.getNhaCungCap(tenNhaCungCap);

        if (nhaCungCap != null) {
            req.getSession().setAttribute("nhaCungCap", nhaCungCap);
            resp.sendRedirect("gdNhapHangHoa161.jsp");
        } else {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Nhà cung cấp không tồn tại");
        }
    }
}
