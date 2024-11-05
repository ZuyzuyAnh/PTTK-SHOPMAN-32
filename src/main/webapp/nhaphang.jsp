<%@ page import="java.util.List" %>
<%@ page import="org.example.demo.model.HangNhap161" %>
<%@ page import="org.example.demo.model.NhaCungCap161" %><%--
  Created by IntelliJ IDEA.
  User: duytr
  Date: 11/3/2024
  Time: 7:35 AM
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
          href="https://fonts.googleapis.com/css2?display=swap&amp;family=Noto+Sans%3Awght%40400%3B500%3B700%3B900&amp;family=Work+Sans%3Awght%40400%3B500%3B700%3B900"
  />

  <title>Galileo Design</title>
  <link rel="icon" type="image/x-icon" href="data:image/x-icon;base64," />

  <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
</head>
<body>
<form action="${pageContext.request.contextPath}/nhap-hang-hoa" method="POST">
<div class="relative flex size-full min-h-screen flex-col bg-white group/design-root overflow-x-hidden" style='font-family: "Work Sans", "Noto Sans", sans-serif;'>
  <div class="layout-container flex h-full grow flex-col">
    <div class="px-40 flex flex-1 justify-center py-5">
      <div class="layout-content-container flex flex-col max-w-[960px] flex-1">
        <div class="flex flex-wrap justify-between gap-3 p-4">
          <p class="text-[#111418] tracking-light text-[32px] font-bold leading-tight min-w-72">Nhập hàng hóa</p>
        </div>
        <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
          <label class="flex flex-col min-w-40 flex-1">
            <input
                    placeholder="Nhà cung cấp"
                    class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111418] focus:outline-0 focus:ring-0 border-none bg-[#f0f2f4] focus:border-none h-14 placeholder:text-[#637588] p-4 text-base font-normal leading-normal"
                    value=""
                    name="nhaCungCap"
            />
          </label>
          <button
                  class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-10 px-4 bg-white text-[#111418] text-sm font-bold leading-normal tracking-[0.015em] border border-[#1980e6]"
          >
            <span class="truncate">Thêm nhà cung cấp</span>
          </button>
        </div>

        <%
          NhaCungCap161 nhaCungCap = (NhaCungCap161) session.getAttribute("nhaCungCap");
          if (nhaCungCap != null) {
            String tenNhaCungCap = nhaCungCap.getTen();
        %>
        <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
          <p class="text-base text-[#111418] mt-2">
            Nhà cung cấp đã chọn:
            <span class="font-bold text-[#1980e6] bg-[#e6f7ff] border border-[#1980e6] rounded-xl p-2">
      <%= tenNhaCungCap %>
    </span>
          </p>
        </div>
        <%
          }
        %>
        <div class="flex px-4 py-3 justify-end">
          <button
                  class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-10 px-4 bg-[#1980e6] text-white text-sm font-bold leading-normal tracking-[0.015em]"
                  type="submit"
                  name="action"
                  value="getNhaCungCap"
          >
            <span class="truncate">Tìm nhà cung cấp</span>
          </button>
        </div>
        <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
          <label class="flex flex-col min-w-40 flex-1">
            <input
                    placeholder="Mặt hàng"
                    class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111418] focus:outline-0 focus:ring-0 border-none bg-[#f0f2f4] focus:border-none h-14 placeholder:text-[#637588] p-4 text-base font-normal leading-normal"
                    value=""
                    name="matHang"
                    required
            />
          </label>
          <button
                  class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-10 px-4 bg-white text-[#111418] text-sm font-bold leading-normal tracking-[0.015em] border border-[#1980e6]"
          >
            <span class="truncate">Thêm mặt hàng</span>
          </button>
        </div>
        <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
          <label class="flex flex-col min-w-40 flex-1">
            <p class="text-[#111418] text-base font-medium leading-normal pb-2">Số lượng</p>
            <input
                    placeholder="Số lượng"
                    class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111418] focus:outline-0 focus:ring-0 border-none bg-[#f0f2f4] focus:border-none h-14 placeholder:text-[#637588] p-4 text-base font-normal leading-normal"
                    value=""
                    name="soLuong"
                    required
                    type="number"
            />
          </label>
        </div>
        <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
          <label class="flex flex-col min-w-40 flex-1">
            <p class="text-[#111418] text-base font-medium leading-normal pb-2">Đơn giá</p>
            <input
                    placeholder="Đơn giá"
                    class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111418] focus:outline-0 focus:ring-0 border-none bg-[#f0f2f4] focus:border-none h-14 placeholder:text-[#637588] p-4 text-base font-normal leading-normal"
                    value=""
                    name="donGia"
                    required
                    type="number"
            />
          </label>
        </div>
        <div class="flex px-4 py-3 justify-end">
          <button
                  class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-10 px-4 bg-[#1980e6] text-white text-sm font-bold leading-normal tracking-[0.015em]"
                  type="submit"
                  name="action"
                  value="addHangNhap"
          >
            <span class="truncate">Thêm</span>
          </button>
        </div>
        <h3 class="text-[#111418] text-lg font-bold leading-tight tracking-[-0.015em] px-4 pb-2 pt-4">Danh sách hàng nhập</h3>
        <div class="px-4 py-3 @container">
          <div class="flex overflow-hidden rounded-xl border border-[#dce0e5] bg-white">
            <table class="flex-1">
              <thead>
              <tr class="bg-white">
                <th class="table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-240 px-4 py-3 text-left text-[#111418] w-[400px] text-sm font-medium leading-normal">Mặt hàng</th>
                <th class="table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-360 px-4 py-3 text-left text-[#111418] w-[400px] text-sm font-medium leading-normal">
                  Số lượng
                </th>
                <th class="table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-480 px-4 py-3 text-left text-[#111418] w-[400px] text-sm font-medium leading-normal">Đơn giá</th>
                <th class="table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-600 px-4 py-3 text-left text-[#111418] w-[400px] text-sm font-medium leading-normal">Thành tiền tiếng anh là gì</th>
              </tr>
              </thead>
              <tbody>

              <%
                List<HangNhap161> listHangNhap = (List<HangNhap161>) session.getAttribute("listHangNhap");
                if (listHangNhap != null) {
                  for (HangNhap161 hangNhap: listHangNhap) {
              %>
              <tr class="border-t border-t-[#dce0e5]">
                <td class="table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-240 h-[72px] px-4 py-2 w-[400px] text-[#111418] text-sm font-normal leading-normal"><%=hangNhap.getHangHoa().getTen()%></td>
                <td class="table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-360 h-[72px] px-4 py-2 w-[400px] text-[#637588] text-sm font-normal leading-normal"><%=hangNhap.getSoLuong()%></td>
                <td class="table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-480 h-[72px] px-4 py-2 w-[400px] text-[#637588] text-sm font-normal leading-normal"><%=hangNhap.getDonGia()%></td>
                <td class="table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-600 h-[72px] px-4 py-2 w-[400px] text-[#637588] text-sm font-normal leading-normal"><%=hangNhap.getThanhTien()%></td>
              </tr>
              <%
                }
                }
              %>
              </tbody>
            </table>
          </div>
          <style>
            @container(max-width:120px){.table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-120{display: none;}}
            @container(max-width:240px){.table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-240{display: none;}}
            @container(max-width:360px){.table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-360{display: none;}}
            @container(max-width:480px){.table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-480{display: none;}}
            @container(max-width:600px){.table-f1e2ccc6-aee1-45f3-a5da-443086fc82d0-column-600{display: none;}}
          </style>
        </div>
        <div class="flex px-4 py-3 justify-end">
          <button
                  class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-10 px-4 bg-[#1980e6] text-white text-sm font-bold leading-normal tracking-[0.015em]"
                  type="submit"
                  name="action"
                  value="saveHoaDon"
          >
            <span class="truncate">Hoàn thành</span>
          </button>
        </div>
      </div>
    </div>
  </div>
</div>
</form>
</body>
</html>


