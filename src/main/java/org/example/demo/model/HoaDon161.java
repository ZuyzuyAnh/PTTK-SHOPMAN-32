package org.example.demo.model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class HoaDon161 {
    private int id;
    private Timestamp ngayTao;
    private double tongTien;
    private String trangThai;

    public HoaDon161(int id, Timestamp ngayTao, double tongTien, String trangThai) {
        this.id = id;
        this.ngayTao = ngayTao;
        this.tongTien = tongTien;
        this.trangThai = trangThai;
    }

    public HoaDon161(int id, Timestamp ngayTao, String trangThai) {
        this.id = id;
        this.ngayTao = ngayTao;
        this.trangThai = trangThai;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Timestamp getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(Timestamp ngayTao) {
        this.ngayTao = ngayTao;
    }

    public double getTongTien() {
        return tongTien;
    }

    public void setTongTien(double tongTien) {
        this.tongTien = tongTien;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public String getFormatNgay() {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        return sdf.format(ngayTao);
    }
}
