# Report
# Project bao gồm 4 phần
>* ##  Điều khiển mạch stc 89c52 bằng dòng lệnh thông qua LCd 16x2 và điều khiển hồng ngoại
>* ## Game rắn săn mồi trên ma trận Led 8*8 
>* ## Điều khiển một điểm sáng di chuyển qua 2 ma trận led 8*8 của 2 mạch stc 89c52 thông qua giao thức UART
>* ## Điều khiển một số thiết bị ngoại vi với esp32 : servo, joystick, led, uart

# Cách build chương trình
* ### Đối với stc 89c52 , chạy file runner.bat trong thư mục 89c52. Tất cả các file .c sẽ được build bằng sdcc. Các file .hex để nạp firmware cho stc 89c52 được đặt riêng trong thư mục hex_file
* ### Đối với esp32, chương trình được đặt trong file main.c . Phần mềm cho esp32 được build bằng platform io. Nếu sử dụng vscode, cài platform io, chọn board và nạp code. Nếu sử dụng arduino ide, tạo project mới, sửa file main.c thành file sketch.ino và cho tất cả các file còn lại vào thư mục libraries. Sau đó build và nạp code

# Điều khiển stc 89c52 với giao diện dòng lệnh hiển thị trên lcd 1602 , sử dụng điều khiển hồng ngoại hoặc ma trận phím.
> ## Chương trình được cài đặt trong file main.c ; sau khi build, file để nạp firmware là main.h
## Cách sử dụng:
> Sử dụng điểu khiển hoặc ma trận phím để chạy chương trình. Bấm các phím từ 0->9 để nhập kí tự, kí tự được nhập tương đối giống với trên các thiết bị điện thoại cũ ( ví dụ phím 2 bao gồm các kí tự a,b,c,2 )
> Sau khi nhập lệnh , bấm phím màu xanh trên điều khiển để thực hiện lệnh.
> Một số lệnh chương trình hỗ trợ như :
> * Timer + < Thời gian >  : ví dụ "Timer 25" . Chương trình sẽ tự đếm ngược từ 25 về 0, khi về 0 sẽ có tiếng beep.
> * stopwatch  : Đếm từ 0 , ngược lại với timer.
> * buzzer : tạo tiếng beep ( tiếng chuông từ buzzer)
> * show + < số > : ví dụ "show 245" : in ra số 245 trên led 7 thanh.
> * led off : tắt led 7 thanh.
> * fan on / fan off : bật / tắt quạt ( chân điều khiển quạt là P2_0 , phải có transitor)
> * temperature : hiển thị trên mành hình led 7 thanh giá trị nhiệt độ được làm tròn.
## Demo
![Alt text](image.png)
## Thiết kế chương trình:

* ### Chi tiết về điểu khiển các thiết bị ngoại vi có thể tìm hiểu ở các tài liệu liên quan như schematic, sdcc, và chú thích code.
* ### Một số điểm quan trọng:
>* ### Một đồng hồ được sử dụng với thời gian ngắt ngắn, cập nhật 1 biến đếm long để bắt thời điểm với độ chính xác cao. Mục đích để lấy thời điểm xuất hiện ngắt hồng ngoại.
>* ### Một đồng hồ còn lại được sử dụng với thời gian ngắt thưa hơn, để đếm từng giây cho các tác vụ đếm giờ như timer, stopwatch.
>* ### Vòng while được cài đặt để nhận tín hiệu ngắt từ ma trận phím, và hiển thị số trên led 7 thanh.
>* ### Tín hiệu hồng ngoại nhận được từ điểu khiển chỉ lấy 1 byte cuối. Sau khi nhận được tín hiệu, không thực hiện lệnh ngay mà đẩy vào 1 hàng đợi. Điều này khắc phục việc, nếu 89c52 nhận quá nhiều tín hiệu điều khiển sẽ bị lag.
>* ### Dòng lệnh chỉ được viết trên 1 dòng của lcd 1602 tại 1 thời điểm. Có phím để chuyển dòng, khi thực hiện lệnh, mạch chỉ lấy giá trị câu lệnh trên dòng hiện tại đang được chính sửa. Điều này là để tiết kiệm bộ nhớ.
>* ### led 7 thanh có hỗ trợ in ra màn hình số âm. 