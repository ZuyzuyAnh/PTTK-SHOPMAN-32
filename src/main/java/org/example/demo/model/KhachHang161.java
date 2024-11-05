package org.example.demo.model;

import java.util.Date;

public class KhachHang161 extends ThanhVien161{
    private HoaDonXuat161[] hoaDon;

    public KhachHang161(int id, String username, String password, Date ngaySinh, String email, String sdt, Ten161 ten, DiaChi161 diaChi161, HoaDonXuat161[] hoaDon) {
        super(id, username, password, ngaySinh, email, sdt, ten, diaChi161);
        this.hoaDon = hoaDon;
    }


    public HoaDonXuat161[] getHoaDon() {
        return hoaDon;
    }

    public void setHoaDon(HoaDonXuat161[] hoaDon) {
        this.hoaDon = hoaDon;
    }
}
