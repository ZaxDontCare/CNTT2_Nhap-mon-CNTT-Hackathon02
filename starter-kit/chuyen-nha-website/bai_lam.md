# BÀI LÀM – HACKATHON 02

- **Mã đề:** 10
- **Họ tên:Đỗ DUy Thành**
- **Lớp:CNTT2**
- **Link repository:**
- **Hệ điều hành (Windows/macOS):Window**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
b1 : pwd
B2 : gci -recurse -force
B3 : mv .\ghi_chu_ban_giao.txt docs
B4 : mkdir backup
B5 : cp .\data\ hop_dong_thang_10.xlsx backup-recurse
B6 : rm *.tmp
B7 : cd logs
     ls -recurse -force
     cd ..
B8 : gci -recurse -force 

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text

    Directory: C:\Users\Roq\Downloads\starter-kit (3)\starter-kit\chuyen-nha-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   1:36 PM                backup
d-----        11/11/2026   1:36 PM                data
d-----        11/11/2026   1:33 PM                docs
d-----        11/11/2026   1:33 PM                evidence
d-----        11/11/2026   1:35 PM                logs
d-----        03/11/2026   7:08 AM                web
-a----        03/11/2026   7:08 AM             70 .env
-a----        03/11/2026   7:08 AM            155 checklist_chuyen_nha.txt


    Directory: C:\Users\Roq\Downloads\starter-kit (3)\starter-kit\chuyen-nha-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        03/11/2026   7:08 AM           6139 hop_dong_thang_10.xlsx


    Directory: C:\Users\Roq\Downloads\starter-kit (3)\starter-kit\chuyen-nha-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        03/11/2026   7:08 AM           6139 hop_dong_thang_10.xlsx


    Directory: C:\Users\Roq\Downloads\starter-kit (3)\starter-kit\chuyen-nha-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        03/11/2026   7:08 AM            973 request.log


    Directory: C:\Users\Roq\Downloads\starter-kit (3)\starter-kit\chuyen-nha-website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        03/11/2026   7:08 AM                images
-a----        03/11/2026   7:08 AM            587 app.js
-a----        03/11/2026   7:08 AM            544 index.html
-a----        03/11/2026   7:08 AM            460 style.css


    Directory: C:\Users\Roq\Downloads\starter-kit
    (3)\starter-kit\chuyen-nha-website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        03/11/2026   7:08 AM           3054 logo-movefast.png


```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
# gc logs/request.log | sls "status=500" >> logs/loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-10-28 08:09:39 POST /api/dat-xe status=500
2026-10-28 08:13:50 POST /api/thanh-toan status=500
2026-10-28 08:16:01 POST /api/tinh-quang-duong status=500
2026-10-28 08:18:12 POST /api/dat-xe status=500
2026-10-28 08:24:34 POST /api/thanh-toan status=500
2026-10-28 08:47:51 POST /api/thanh-toan status=500


```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
# (gc logs/request.log | sls "status=404" | Measure-Object).Count


```

```text
4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
# ./tong_hop.ps1

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===

2026-10-28 08:28:45 GET /dat-xe-cu status=404
2026-10-28 08:41:29 GET /khuyen-mai-cu status=404
2026-10-28 08:50:02 GET /khuyen-mai-cu status=404
2026-10-28 09:05:46 GET /tin-tuc status=404


6


```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ ] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [ ] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [ ] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | network |net::ERR_FILE_NOT_FOUND  | dùng vscode vào |
| 2 |  console |hienThiGoi is not defined  |dùng VS code vào file app.js sửa hienthigoi thành hienThiGoiChuyen  |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:Tôi mở trình duyệt Chrome để kiểm tra trang web web/index.html bằng DevTools** 
- **Expected:Bảng Model hiển thị đầy đủ dữ liệu và các thông tin chính xác khi mở trang web** 
- **Actual:Bảng Model không hiển thị dữ liệu. Trong tab Console xuất hiện thông báo lỗi màu đỏ, khiến chức năng hiển thị bảng model không hoạt động** 
- **Log:Uncaught ReferenceError: hienThiGoi is not defined** 

### Câu tìm kiếm Google

```text
Site:stackoverflow.com "hienThiGoi is not defined"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/hop_dong_thang_10.xlsx`, không cần ghi vào đây.
