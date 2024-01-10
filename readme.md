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

# Game rắn săn mồi trên ma trận led 8*8.
## Chương trình được cài đặt ở file snake.c , file sau build là snake.hex
## Cách chơi :
>* Bấm phím bất kì để bắt đầu
>* 4 phím điều khiển là phím thứ 2 trên hàng thứ nhất và 3 phím đầu trên hàng thứ 2. Tương tự như các phím mũi tên có trên bàn phím.
>* Điểu khiển rắn ăn mồi để tăng điểm. Mồi là điểm sáng nhấp nháy trên mành hình.
>* Điểm của người chơi hiện trên ma trận led 7 thanh, ở phía bên phải. Có một số 0 ở phía trái, đừng bận tâm, đây là hạn chế của việc trùng chân với điều khiển ma trận led, cũng như sử dụng chung code led 7 thanh của các chương trình khác.
>* Game kết thúc khi rắn chạm biên, hoặc chạm chính nó.
>* Sau khi game kết thúc, sẽ có một dạng hỉnh ảnh chạy hiển thị trên ma trận led.

## Xây dựng game:

### Xây dựng chương trình điểu khiển ma trận led.
>* Mỗi đèn led trong ma trận led được điểu khiển bởi giá trị của 2 chân. 64 đèn cần tổng cộng 16 chân, 1 hàng 8 chân và 1 cột 8 chân, mỗi cặp tương ứng 1 đèn.
>* Giá trị của chân theo hàng được điều khiển thông qua IC dịch và latch, được điểu khiển bởi 3 chân của 89c52 là P34,p35,p36 bao gồm 1 chân data, 1 chân clock và 1 chân latch.
>* Giá trị của cột là giá trị của P0
>* Dữ liệu của các bit 8*8 để hiển thị được lưu trong mảng data_mat, là 1 mảng 8 phần tử char ( để tiết kiệm bộ nhớ)
>* Các toán tử để gán giá trị để điểu khiển ma trận led dều là toán tử bit ( bit manipulation)

### Demo
>Game:
![Alt text](image-1.png)
Game over:
![Alt text](image-2.png)

### Xây dựng Game rắn săn mồi:
 #### Quản lý trạng thái của game thông qua các biến:
 > head : Vị trí đầu rắn
> tail : Vị trí đuôi rắn
> Một cấu trúc dữ liệu đặc biệt để lưu vị trí tiếp theo của đuôi rắn. 
> Dạng Next[u] = v , tức là nếu đuôi rắn đang ở vị trí u, thì tiếp theo đuôi sẽ ở vị trí v.
> Tuy nhiên, Để giảm bớt bộ nhớ cần thiết, ta nhận thấy, vị trí tiếp theo của v chỉ có tối đa 4 khả năng.
> Do đó, ta sẽ sử dụng 2 mảng char, bit0[8] và bit1[8], với ý tưởng tương tự data_mat, ghép 2 giá trị của bit0 và bit1 lại ta sẽ biết vị trí tiếp theo của tail.
> Một biến char để lưu vị trí của mồi. Trong game 1 lúc chỉ có 1 mồi tồn tại
> Một biến lưu hướng di chuyển hiện tại của con rắn

 ### Sau mỗi bước di chuyển của rắn, game sẽ được cập nhật:
 #### Kiểm tra trạng thái của game tại vị trí Head :
> Nếu Head là vị trí của mồi, không cập nhật tail, tăng điểm
> Nếu Head là vị trí bình thường, cập nhật Head, cập nhật tail, cập nhật giá trị next[Head] = new Head
> Nếu Head là vị trí biên, hoặc chính là con rắn , thì game kết thúc.

#### Bật đèn led tại ví trí của Head
#### Tắt đèn led tại vị trí của Tail
#### Trạng thái của game được upate ( con rắn sẽ di chuyển) sau:
> * Người dùng bấm phím điều khiển. Nếu hướng điều khiển khác với hướng hiện tại của con rắn, thì update trạng thái game
> * Sau một khoảng thời gian nhất định, cập nhật trạng thái game.

#### Một Đồng hồ được sử dụng để:
> * Cập nhật trạng thái game sau mỗi khoảng thời gian nhất định.
> * Bật tắt đèn led tại vị trí mồi để làm cho điểm đó nhấp nháy