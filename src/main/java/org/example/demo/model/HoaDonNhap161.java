package org.example.demo.model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class HoaDonNhap161 extends HoaDon161 {
    private NhaCungCap161 nhaCungCap;
    private HangNhap161[] dsHangNhap;

    public HoaDonNhap161(int id, Timestamp ngayTao, String trangThai) {
        super(id, ngayTao, trangThai);
    }

    public HoaDonNhap161(int id, Timestamp ngayTao, double tongTien, String trangThai, NhaCungCap161 nhaCungCap, HangNhap161[] dsHangNhap) {
        super(id, ngayTao, tongTien, trangThai);
        this.nhaCungCap = nhaCungCap;
        this.dsHangNhap = dsHangNhap;
    }

    public HoaDonNhap161(int id, Timestamp ngayTao, String trangThai, NhaCungCap161 nhaCungCap, HangNhap161[] dsHangNhap) {
        super(id, ngayTao, trangThai);
        this.nhaCungCap = nhaCungCap;
        this.dsHangNhap = dsHangNhap;
    }

    public NhaCungCap161 getNhaCungCap() {
        return nhaCungCap;
    }

    public void setNhaCungCap(NhaCungCap161 nhaCungCap) {
        this.nhaCungCap = nhaCungCap;
    }

    public HangNhap161[] getDsHangNhap() {
        return dsHangNhap;
    }

    public void setDsHangNhap(HangNhap161[] dsHangNhap) {
        this.dsHangNhap = dsHangNhap;
    }

}
