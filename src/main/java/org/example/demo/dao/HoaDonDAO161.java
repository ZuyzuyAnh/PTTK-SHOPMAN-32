package org.example.demo.dao;

import org.example.demo.model.HoaDonNhap161;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class HoaDonDAO161 extends DAO161{
    public HoaDonDAO161() {
        super();
    }

    public void luuHoaDon(HoaDonNhap161 hoaDon) {
        String sql = "{CALL luuHoaDonNhap(?, ?, ?)}";
        CallableStatement stmt = null;

        try {
            Connection conn = getConnection();
            stmt = conn.prepareCall(sql);

            stmt.setInt(1, hoaDon.getNhaCungCap().getId());
            stmt.registerOutParameter(2, java.sql.Types.INTEGER);
            stmt.registerOutParameter(3, java.sql.Types.TIMESTAMP);

            stmt.execute();

            int id = stmt.getInt(2);
            Timestamp ngayTao = stmt.getTimestamp(3);

            hoaDon.setId(id);
            hoaDon.setNgayTao(ngayTao);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
