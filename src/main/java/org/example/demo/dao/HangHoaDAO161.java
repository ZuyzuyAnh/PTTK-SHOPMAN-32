package org.example.demo.dao;

import org.example.demo.model.HangHoa161;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HangHoaDAO161 extends DAO161{
    public HangHoaDAO161() {
        super();
    }

    public HangHoa161 getHangHoa(String tenHangHoa) {
        String sql = "{CALL timHangHoaTheoTen(?)}";
        CallableStatement stmt = null;
        ResultSet rs = null;
        HangHoa161 hangHoa = null;
        try {
            Connection conn = getConnection();
            stmt = conn.prepareCall(sql);

            stmt.setString(1, tenHangHoa);
            rs = stmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String ten = rs.getString("ten");
                String moTa = rs.getString("mota");

                hangHoa = new HangHoa161(id, ten, moTa);
                break;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return hangHoa;
    }
}
