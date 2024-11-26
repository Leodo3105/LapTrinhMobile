//2. Viết chương trình tính tổng các ước số của một số nguyên được nhập từ bàn phím (n >= 1)

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
  int sum = sumOfDivisors(n);
  print("Tổng các ước số của $n là: $sum");
}

int sumOfDivisors(int number) {
  int sum = 0;
  // Duyệt từ 1 đến căn bậc hai của số
  for (int i = 1; i * i <= number; i++) {
    // Nếu i là ước của number
    if (number % i == 0) {
      // Thêm i vào tổng
      sum += i;
      // Nếu i khác với number / i, thêm number / i vào tổng
      if (i != number ~/ i) {
        sum += number ~/ i;
      }
    }
  }
  return sum;
}
