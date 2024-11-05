<%@ page import="org.example.demo.model.NhaCungCap161" %>
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
  <title>Chọn Nhà Cung Cấp</title>
  <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
</head>
<body>
<form action="chon-nha-cung-cap" method="POST">
  <div class="relative flex size-full min-h-screen flex-col bg-white group/design-root overflow-x-hidden" style='font-family: "Work Sans", "Noto Sans", sans-serif;'>
    <div class="layout-container flex h-full grow flex-col">
      <div class="px-40 flex flex-1 justify-center py-5">
        <div class="layout-content-container flex flex-col max-w-[960px] flex-1">
          <div class="flex flex-wrap justify-between gap-3 p-4">
            <p class="text-[#111418] tracking-light text-[32px] font-bold leading-tight min-w-72">Chọn nhà cung cấp</p>
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
        </div>
      </div>
    </div>
  </div>
</form>
</body>
</html>
