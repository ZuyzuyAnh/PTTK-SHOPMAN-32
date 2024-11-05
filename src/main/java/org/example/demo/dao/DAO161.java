package org.example.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO161 {
    protected static Connection con;

    public DAO161() {
        if (con == null) {
            String dbUrl = "jdbc:mysql://localhost:3306/shopman32?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
            String dbClass = "com.mysql.cj.jdbc.Driver";

            try {
                Class.forName(dbClass);
                con = DriverManager.getConnection(dbUrl, "user", "password");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public Connection getConnection() {
        return con;
    }

    public void closeConnection() {
        try {
            if (con != null && !con.isClosed()) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

