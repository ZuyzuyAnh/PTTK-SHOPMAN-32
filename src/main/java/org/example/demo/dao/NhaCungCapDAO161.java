package org.example.demo.dao;

import org.example.demo.model.DiaChi161;
import org.example.demo.model.NhaCungCap161;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class NhaCungCapDAO161 extends DAO161{
    public NhaCungCapDAO161() {
        super();
    }

    public NhaCungCap161 getNhaCungCap(String tenNhaCungCap) {
        String sql = "{CALL timNhaCungCapTheoTen(?)}";
        CallableStatement stmt = null;
        ResultSet rs = null;
        NhaCungCap161 nhaCungCap = null;

        try {
            Connection conn = getConnection();
            stmt = conn.prepareCall(sql);

            stmt.setString(1, tenNhaCungCap);
            rs = stmt.executeQuery();

            while (rs.next()) {
                int idNhaCungCap = rs.getInt("nhaCungCapId");
                String ten = rs.getString("ten");
                String sdt = rs.getString("sdt");

                int idDiaChi = rs.getInt("diaChiId");
                String soNha = rs.getString("sonha");
                String xomPho = rs.getString("xompho");
                String toaNha = rs.getString("toanha");
                String phuongXa = rs.getString("phuongxa");
                String quanHuyen = rs.getString("quanhuyen");
                String tinhThanh = rs.getString("tinhthanh");

                DiaChi161 diaChi = new DiaChi161(idDiaChi, soNha, xomPho, toaNha, phuongXa, quanHuyen, tinhThanh);
                nhaCungCap = new NhaCungCap161(idNhaCungCap, ten, sdt, diaChi);

                break;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return nhaCungCap;
    }
}
