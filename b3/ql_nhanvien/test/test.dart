import '../models/nhanvien.dart';
import '../models/nhanvienbanhang.dart';

void main() {
  var nv = NhanVien('NV001', 'Chó Long An', 5000000);
  print('Thông tin nhân viên thường: ');
  nv.hienThiThongTin();
  print('-----------------');
  print('Thông tin nhân viên bán hàng: ');
  var nv_BH = NhanVienBanHang('NV002', 'Hoàng VL', 8000000, 100, 0.6);
  nv_BH.hienThiThongTin();

  nv_BH.doanhSo = -10000000;
  print('\nSau khi tăng doang số');
  nv_BH.hienThiThongTin();
}
