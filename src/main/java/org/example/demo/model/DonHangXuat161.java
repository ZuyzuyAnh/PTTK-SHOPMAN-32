package org.example.demo.model;

public class DonHangXuat161 {
    private int id;
    private int soLuong;
    private float tongTien;
    private HangHoa161 hangHoa;

    public DonHangXuat161(int soLuong, float tongTien, HangHoa161 hangHoa) {
        this.soLuong = soLuong;
        this.tongTien = tongTien;
        this.hangHoa = hangHoa;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public float getTongTien() {
        return tongTien;
    }

    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }

    public HangHoa161 getHangHoa() {
        return hangHoa;
    }

    public void setHangHoa(HangHoa161 hangHoa) {
        this.hangHoa = hangHoa;
    }
}
