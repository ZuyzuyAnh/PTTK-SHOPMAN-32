package org.example.demo.model;

public class NhaCungCap161 {
    private int id;
    private String ten;
    private String sdt;
    private DiaChi161 diaChi161;

    public NhaCungCap161(int id, String ten, String sdt, DiaChi161 diaChi161) {
        this.id = id;
        this.ten = ten;
        this.sdt = sdt;
        this.diaChi161 = diaChi161;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public DiaChi161 getDiaChi161() {
        return diaChi161;
    }

    public void setDiaChi161(DiaChi161 diaChi161) {
        this.diaChi161 = diaChi161;
    }
}
