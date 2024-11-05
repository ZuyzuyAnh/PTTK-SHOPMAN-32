<%--
  Created by IntelliJ IDEA.
  User: duytr
  Date: 11/2/2024
  Time: 6:55 AM
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
          href="https://fonts.googleapis.com/css2?display=swap&amp;family=Manrope%3Awght%40400%3B500%3B700%3B800&amp;family=Noto+Sans%3Awght%40400%3B500%3B700%3B900"
  />

  <title>Đăng kí khách hàng</title>
  <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
</head>
<body>
<div
        class="relative flex size-full min-h-screen flex-col bg-white group/design-root overflow-x-hidden"
        style="--checkbox-tick-svg: url('data:image/svg+xml,%3csvg viewBox=%270 0 16 16%27 fill=%27rgb(255,255,255)%27 xmlns=%27http://www.w3.org/2000/svg%27%3e%3cpath d=%27M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z%27/%3e%3c/svg%3e'); font-family: Manrope, &quot;Noto Sans&quot;, sans-serif;"
>
  <div class="layout-container flex h-full grow flex-col">
    <header class="flex items-center justify-between whitespace-nowrap border-b border-solid border-b-[#f0f2f5] px-10 py-3">
      <div class="flex items-center gap-4 text-[#111518]">
        <div class="size-4">
          <svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
            <g clip-path="url(#clip0_6_319)">
              <path
                      d="M8.57829 8.57829C5.52816 11.6284 3.451 15.5145 2.60947 19.7452C1.76794 23.9758 2.19984 28.361 3.85056 32.3462C5.50128 36.3314 8.29667 39.7376 11.8832 42.134C15.4698 44.5305 19.6865 45.8096 24 45.8096C28.3135 45.8096 32.5302 44.5305 36.1168 42.134C39.7033 39.7375 42.4987 36.3314 44.1494 32.3462C45.8002 28.361 46.2321 23.9758 45.3905 19.7452C44.549 15.5145 42.4718 11.6284 39.4217 8.57829L24 24L8.57829 8.57829Z"
                      fill="currentColor"
              ></path>
            </g>
            <defs>
              <clipPath id="clip0_6_319"><rect width="48" height="48" fill="white"></rect></clipPath>
            </defs>
          </svg>
        </div>
        <h2 class="text-[#111518] text-lg font-bold leading-tight tracking-[-0.015em]">SnapTravel</h2>
      </div>
    </header>

    <%
      String message = (String) session.getAttribute("message");
      String error = (String) session.getAttribute("error");
    %>

    <!-- Thông báo thành công -->
    <% if (message != null && !message.isEmpty()) { %>
    <div class="px-4 py-3 bg-green-200 text-green-800 border border-green-300 rounded">
      <%= message %>
    </div>
    <%
      session.removeAttribute("message");
    %>
    <% } %>

    <!-- Thông báo lỗi -->
    <% if (error != null && !error.isEmpty()) { %>
    <div class="px-4 py-3 bg-red-200 text-red-800 border border-red-300 rounded">
      <%= error %>
    </div>
    <%
      session.removeAttribute("error");
    %>
    <% } %>

    <div class="px-40 flex flex-1 justify-center py-5">
      <div class="layout-content-container flex flex-col w-[512px] max-w-[512px] py-5 max-w-[960px] flex-1">
        <h2 class="text-[#111518] tracking-light text-[28px] font-bold leading-tight px-4 text-center pb-3 pt-5">SHOPMAN</h2>
        <p class="text-[#111518] text-base font-normal leading-normal pb-3 pt-1 px-4 text-center">Đăng kí thành viên cho khách hàng</p>
        <form action="${pageContext.request.contextPath}/dang-ki" method="POST">
          <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
            <label class="flex flex-col min-w-40 flex-1">
              <input
                      placeholder="*Username"
                      name="username"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>
          </div>
          <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
            <label class="flex flex-col min-w-40 flex-1">
              <input
                      placeholder="*Password"
                      type="password"
                      name="password"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>
          </div>
          <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
            <label class="flex flex-col min-w-40 flex-1">
              <input
                      placeholder="*Họ"
                      name="ho"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>
          </div>
          <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
            <label class="flex flex-col min-w-40 flex-1">
              <input
                      placeholder="*Tên"
                      name="ten"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>
          </div>
          <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
            <label class="flex flex-col min-w-40 flex-1">
              <input
                      placeholder="*Tên đệm"
                      name="tendem"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>
          </div>
          <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
            <label class="flex flex-col min-w-40 flex-1">
              <input
                      placeholder="Ngày sinh"
                      type="date"
                      name="ngaysinh"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>
          </div>
          <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
            <label class="flex flex-col min-w-40 flex-1">
              <input
                      placeholder="*Email"
                      type="email"
                      name="email"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>
          </div>
          <div class="flex max-w-[480px] flex-wrap items-end gap-4 px-4 py-3">
            <label class="flex flex-col min-w-40 flex-1">
              <input
                      placeholder="*SDT"
                      name="sdt"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>
          </div>
          <div class="grid grid-cols-3 gap-4 px-4 py-3">
            <!-- Ô thứ nhất hàng đầu -->
            <label class="flex flex-col min-w-40">
              <input
                      placeholder="*Số nhà"
                      name="sonha"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>

            <!-- Ô thứ hai hàng đầu -->
            <label class="flex flex-col min-w-40">
              <input
                      placeholder="Tòa nhà"
                      name="toanha"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
              />
            </label>

            <!-- Ô thứ ba hàng đầu -->
            <label class="flex flex-col min-w-40">
              <input
                      placeholder="*Xóm/Phố"
                      name="xompho"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>

            <!-- Ô thứ nhất hàng thứ hai -->
            <label class="flex flex-col min-w-40">
              <input
                      placeholder="*Xã/Phường"
                      name="xaphuong"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>

            <!-- Ô thứ hai hàng thứ hai -->
            <label class="flex flex-col min-w-40">
              <input
                      placeholder="*Quận/Huyện"
                      name="quanhuyen"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>

            <!-- Ô thứ ba hàng thứ hai -->
            <label class="flex flex-col min-w-40">
              <input
                      placeholder="*Tỉnh/Thành"
                      name="tinhthanh"
                      class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-[#111518] focus:outline-0 focus:ring-0 border border-[#dbe1e6] bg-white focus:border-[#dbe1e6] h-14 placeholder:text-[#60778a] p-[15px] text-base font-normal leading-normal"
                      value=""
                      required
              />
            </label>
          </div>
          <div class="flex px-4 py-3">
            <button
                    type="submit"
                    class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-xl h-10 px-4 flex-1 bg-[#2094f3] text-white text-sm font-bold leading-normal tracking-[0.015em]"
            >
              <span class="truncate">Sign up</span>
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>

