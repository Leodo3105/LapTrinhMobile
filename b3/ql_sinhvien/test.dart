import 'main.dart';

void main() {
  var sv = SinhVien('Nguyen Van A', 20, 'SV001', 8.5);
  print(sv.hoTen);
  sv.hienThiThongTin();
  print('-------------');
  sv.hoTen = 'Nguyen Van B';
  sv.hienThiThongTin();
  print('-------------');
  sv.hoTen = '';
  sv.hienThiThongTin();
  print('-------------');
  print(sv.xepHang());

  print('-------------');
  var lopHoc = LopHoc("21DTHF1");
  lopHoc.themSV(SinhVien('Nguyen Van A', 20, 'SV001', 8.5));
  lopHoc.themSV(SinhVien('Nguyen Van B', 20, 'SV002', 3.5));
  lopHoc.themSV(SinhVien('Nguyen Van C', 20, 'SV003', 5.5));
  lopHoc.themSV(SinhVien('Nguyen Van D', 20, 'SV004', 6.5));
  lopHoc.hienThiDanhSach();
}
