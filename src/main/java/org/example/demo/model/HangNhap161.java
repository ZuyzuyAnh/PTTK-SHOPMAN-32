package org.example.demo.model;

public class HangNhap161 {
    private int soLuong;
    private float donGia;
    private float thanhTien;
    private HangHoa161 hangHoa;
    private HoaDonNhap161 hoaDon;

    public HangNhap161(int soLuong, float donGia, HangHoa161 hangHoa, HoaDonNhap161 hoaDon) {
        this.soLuong = soLuong;
        this.donGia = donGia;
        this.hangHoa = hangHoa;
        this.hoaDon = hoaDon;
        this.thanhTien = soLuong * donGia;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public float getDonGia() {
        return donGia;
    }

    public void setDonGia(float donGia) {
        this.donGia = donGia;
    }

    public HangHoa161 getHangHoa() {
        return hangHoa;
    }

    public void setHangHoa(HangHoa161 hangHoa161) {
        this.hangHoa = hangHoa161;
    }

    public HoaDonNhap161 getHoaDon() {
        return hoaDon;
    }

    public void setHoaDon(HoaDonNhap161 hoaDonDAO161) {
        this.hoaDon = hoaDonDAO161;
    }

    public float getThanhTien() {
        return thanhTien;
    }

    public void setThanhTien(float thanhTien) {
        this.thanhTien = thanhTien;
    }
}
