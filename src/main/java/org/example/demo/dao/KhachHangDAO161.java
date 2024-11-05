package org.example.demo.dao;

import org.example.demo.model.DiaChi161;
import org.example.demo.model.KhachHang161;
import org.example.demo.model.Ten161;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Date;

public class KhachHangDAO161 extends DAO161 {
    public KhachHangDAO161() {
        super();
    }

    public void luuKhachHang(KhachHang161 khachHang161) {
        String sql = "{CALL dangkiKH(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
        CallableStatement stmt = null;

        try {
            Connection conn = getConnection();
            stmt = conn.prepareCall(sql);

            Ten161 ten = khachHang161.getTen();
            DiaChi161 diaChi = khachHang161.getDiaChi();

            stmt.setString(1, khachHang161.getUsername());
            stmt.setString(2, khachHang161.getPassword());

            stmt.setString(3, ten.getHo());
            stmt.setString(4, ten.getTen());
            stmt.setString(5, ten.getTenDem());

            stmt.setString(6, khachHang161.getEmail());
            stmt.setDate(7, new Date(khachHang161.getNgaySinh().getTime()));
            stmt.setString(8, khachHang161.getSdt());

            stmt.setString(9, diaChi.getSoNha());
            stmt.setString(10, diaChi.getToaNha());
            stmt.setString(11, diaChi.getXomPho());
            stmt.setString(12, diaChi.getPhuongXa());
            stmt.setString(13, diaChi.getQuanHuyen());
            stmt.setString(14, diaChi.getTinhThanh());

            stmt.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
