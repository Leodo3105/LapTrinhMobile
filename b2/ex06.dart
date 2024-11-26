//1. Viết chương trình chuyển đổi 1 số nguyên (b >= 1) được nhập từ bàn phím thành số nhị phân

import 'dart:io';
import 'dart:math';

void main() {
  int n = 0;
  do {
    stdout.write('Nhập số n (n khác 0): ');
    String? input = stdin.readLineSync();
    if (input != null) {
      n = int.tryParse(input) ?? 0;
    }
    if (n == 0) {
      print('Số n phải khác 0. Vui lòng nhập lại!');
    }
  } while (n == 0);

  if (n == null || n < 1) {
    print("Vui lòng nhập một số nguyên hợp lệ (n >= 1).");
    return;
  }
  // Chuyển đổi số nguyên thành nhị phân
  String binary = convertToBinary(n);
  // In kết quả
  print("Số nhị phân tương ứng là: $binary");
}

String convertToBinary(int number) {
  // Khởi tạo chuỗi kết quả
  String result = '';

  // Nếu số là 0, trả về '0'
  if (number == 0) {
    return '0';
  }
  // Chuyển đổi số thành nhị phân
  while (number > 0) {
    // Thêm phần dư vào đầu chuỗi kết quả
    result = '${number % 2}$result';
    // Chia số cho 2
    number ~/= 2;
  }
  return result;
}
