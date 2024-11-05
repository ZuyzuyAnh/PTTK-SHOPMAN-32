<%@ page import="org.example.demo.model.HoaDonNhap161" %>
<%@ page import="org.example.demo.model.HangNhap161" %><%--
  Created by IntelliJ IDEA.
  User: duytr
  Date: 11/3/2024
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="" />
    <link
            rel="stylesheet"
            as="style"
            onload="this.rel='stylesheet'"
            href="https://fonts.googleapis.com/css2?display=swap&amp;family=Noto+Sans%3Awght%40400%3B500%3B700%3B900&amp;family=Public+Sans%3Awght%40400%3B500%3B700%3B900"
    />

    <title>Galileo Design</title>
    <link rel="icon" type="image/x-icon" href="data:image/x-icon;base64," />

    <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
</head>
<body>
<div class="relative flex size-full min-h-screen flex-col bg-slate-50 group/design-root overflow-x-hidden" style='font-family: "Public Sans", "Noto Sans", sans-serif;'>
    <div class="layout-container flex h-full grow flex-col">
        <div class="px-40 flex flex-1 justify-center py-5">
            <%
                HoaDonNhap161 hoaDon = (HoaDonNhap161) session.getAttribute("hoaDon");
            %>
            <div class="layout-content-container flex flex-col max-w-[960px] flex-1">
                <div class="flex flex-wrap gap-2 p-4">
                    <a class="text-[#4e7397] text-base font-medium leading-normal" href="#">Hóa đơn</a>
                    <span class="text-[#4e7397] text-base font-medium leading-normal">/</span>
                    <span class="text-[#0e141b] text-base font-medium leading-normal">Hóa đơn <%=hoaDon.getId()%></span>
                </div>
                <div class="flex flex-wrap justify-between gap-3 p-4"><p class="text-[#0e141b] tracking-light text-[32px] font-bold leading-tight min-w-72">Hóa đơn <%=hoaDon.getId()%></p></div>
                <div class="p-4">
                    <div class="flex justify-between gap-x-6 py-2">
                        <p class="text-[#4e7397] text-sm font-normal leading-normal">Ngày tạo</p>
                        <p class="text-[#0e141b] text-sm font-normal leading-normal text-right"><%=hoaDon.getFormatNgay()%></p>
                    </div>
                    <div class="flex justify-between gap-x-6 py-2">
                        <p class="text-[#4e7397] text-sm font-normal leading-normal">Nhà cung cấp</p>
                        <p class="text-[#0e141b] text-sm font-normal leading-normal text-right"><%=hoaDon.getNhaCungCap().getTen()%></p>
                    </div>
                    <div class="flex justify-between gap-x-6 py-2">
                        <p class="text-[#4e7397] text-sm font-normal leading-normal">Thành tiền</p>
                        <p class="text-[#0e141b] text-sm font-normal leading-normal text-right"><%=hoaDon.getTongTien()%></p>
                    </div>
                </div>
                <div class="px-4 py-3 @container">
                    <div class="flex overflow-hidden rounded-xl border border-[#d0dbe7] bg-slate-50">
                        <table class="flex-1">
                            <thead>
                            <tr class="bg-slate-50">
                                <th class="table-aeb29417-e684-4604-b283-aba2633a7e34-column-240 px-4 py-3 text-left text-[#0e141b] w-[400px] text-sm font-medium leading-normal">
                                    Mặt hàng
                                </th>
                                <th class="table-aeb29417-e684-4604-b283-aba2633a7e34-column-360 px-4 py-3 text-left text-[#0e141b] w-[400px] text-sm font-medium leading-normal">
                                    Số lượng
                                </th>
                                <th class="table-aeb29417-e684-4604-b283-aba2633a7e34-column-480 px-4 py-3 text-left text-[#0e141b] w-[400px] text-sm font-medium leading-normal">
                                    Đơn giá
                                </th>
                                <th class="table-aeb29417-e684-4604-b283-aba2633a7e34-column-600 px-4 py-3 text-left text-[#0e141b] w-[400px] text-sm font-medium leading-normal">Thành tiền</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                HangNhap161[] listHangNhap = hoaDon.getDsHangNhap();
                                if (listHangNhap != null) {
                                    for (HangNhap161 hangNhap: listHangNhap) {
                            %>
                            <tr class="border-t border-t-[#d0dbe7]">
                                <td class="table-aeb29417-e684-4604-b283-aba2633a7e34-column-120 h-[72px] px-4 py-2 w-[400px] text-[#0e141b] text-sm font-normal leading-normal">
                                    <%=hangNhap.getHangHoa().getTen()%>
                                </td>
                                <td class="table-aeb29417-e684-4604-b283-aba2633a7e34-column-240 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">
                                    <%=hangNhap.getSoLuong()%>
                                </td>
                                <td class="table-aeb29417-e684-4604-b283-aba2633a7e34-column-360 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">
                                    <%=hangNhap.getDonGia()%>
                                </td>
                                <td class="table-aeb29417-e684-4604-b283-aba2633a7e34-column-600 h-[72px] px-4 py-2 w-[400px] text-[#4e7397] text-sm font-normal leading-normal">
                                    <%=hangNhap.getThanhTien()%>
                                </td>
                            </tr>
                            <%
                                }
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                    <style>
                        @container(max-width:120px){.table-aeb29417-e684-4604-b283-aba2633a7e34-column-120{display: none;}}
                        @container(max-width:240px){.table-aeb29417-e684-4604-b283-aba2633a7e34-column-240{display: none;}}
                        @container(max-width:360px){.table-aeb29417-e684-4604-b283-aba2633a7e34-column-360{display: none;}}
                        @container(max-width:480px){.table-aeb29417-e684-4604-b283-aba2633a7e34-column-480{display: none;}}
                        @container(max-width:600px){.table-aeb29417-e684-4604-b283-aba2633a7e34-column-600{display: none;}}
                    </style>
                </div>
                <div class="flex px-4 py-3">
                    <button
                            class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-10 px-4 flex-1 bg-[#e7edf3] text-[#0e141b] text-sm font-bold leading-normal tracking-[0.015em]"
                    >
                        <span class="truncate">Hoàn thành</span>
                    </button>
                    <button
                            class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-10 px-4 flex-1 bg-[#e7edf3] text-[#0e141b] text-sm font-bold leading-normal tracking-[0.015em]"
                    >
                        <span class="truncate">In hóa đơn</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

