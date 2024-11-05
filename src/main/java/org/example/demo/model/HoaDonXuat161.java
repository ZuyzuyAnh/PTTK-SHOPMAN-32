package org.example.demo.model;

import java.util.Date;

public class HoaDonXuat161 {
    private int id;
    private Date ngayNhap;
    private float tongTien;
    private DonHangXuat161[] dsHangXuat;
    private TrangThai161 trangThai;

    public HoaDonXuat161(Date ngayNhap, float tongTien, DonHangXuat161[] dsHangXuat, TrangThai161 trangThai) {
        this.ngayNhap = ngayNhap;
        this.tongTien = tongTien;
        this.dsHangXuat = dsHangXuat;
        this.trangThai = trangThai;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgayNhap() {
        return ngayNhap;
    }

    public void setNgayNhap(Date ngayNhap) {
        this.ngayNhap = ngayNhap;
    }

    public float getTongTien() {
        return tongTien;
    }

    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }

    public DonHangXuat161[] getDsHangXuat() {
        return dsHangXuat;
    }

    public void setDsHangXuat(DonHangXuat161[] dsHangXuat) {
        this.dsHangXuat = dsHangXuat;
    }

    public TrangThai161 getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(TrangThai161 trangThai) {
        this.trangThai = trangThai;
    }
}
