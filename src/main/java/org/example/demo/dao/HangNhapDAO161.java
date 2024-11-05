package org.example.demo.dao;

import org.example.demo.model.HangHoa161;
import org.example.demo.model.HangNhap161;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class HangNhapDAO161 extends DAO161{
    public HangNhapDAO161() {
        super();
    }

    public void luuHangNhap(HangNhap161 hangNhap) {
        String sql = "{CALL luuHangNhap(?,?,?,?, ?)}";
        CallableStatement stmt = null;

        try {
            Connection conn = getConnection();
            stmt = conn.prepareCall(sql);

            stmt.setInt(1, hangNhap.getSoLuong());
            stmt.setFloat(2, hangNhap.getDonGia());
            stmt.setInt(3, hangNhap.getHoaDon().getId());
            stmt.setInt(4, hangNhap.getHoaDon().getNhaCungCap().getId());
            stmt.setInt(5, hangNhap.getHangHoa().getId());

            stmt.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
