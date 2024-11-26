// Lop sinh vien
class SinhVien {
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _diemTB;

  //Constructor
  SinhVien(this._hoTen, this._tuoi, this._maSV, this._diemTB);

  // Getters
  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  String get maSV => _maSV;
  double get diemTB => _diemTB;

  //Setters
  set hoTen(String hoTen) {
    if (hoTen.isNotEmpty) {
      _hoTen = hoTen;
    }
  }

  set tuoi(int tuoi) {
    _tuoi = (tuoi > 0) ? tuoi : _tuoi;
  }

  set maSV(String maSV) {
    if (maSV.isNotEmpty) {
      _maSV = maSV;
    }
  }

  set diemTB(double diemTB) {
    if (diemTB >= 0 && diemTB <= 10) {
      _diemTB = diemTB;
    }
  }

  //Methods
  void hienThiThongTin() {
    print('Họ tên: $hoTen');
    print('Tuổi: $tuoi');
    print('MSSV: $maSV');
    print('Điểm TB: $diemTB');
  }

  String xepHang() {
    if (diemTB < 5.0) {
      return 'Yếu';
    } else if (diemTB >= 5.0 && diemTB < 6.5) {
      return 'Trung bình';
    } else if (diemTB >= 6.5 && diemTB < 8.0) {
      return 'Khá';
    } else {
      return 'Giỏi';
    }

    /*
    if(_diemTB >= 8.0) return 'Giỏi; 
    if(_diemTB >= 6.5) return 'Khá; 
    if(_diemTB >= 5) return 'Trung Bình; 
    return 'Yếu';
    */
  }
}

class LopHoc{
  List<SinhVien> _DSSV = [];
  String _tenLop;

  LopHoc(this._tenLop);

  String get tenLop => _tenLop;
  List<SinhVien> get DSSV => _DSSV;

  set tenLop(String tenLop) {
    if (tenLop.isNotEmpty) {
      _tenLop = tenLop;
    }
  }

  void themSV(SinhVien sv) => _DSSV.add(sv);
  
  void hienThiDanhSach() {
    print('Thông tin sinh viên:');
    print("Danh sách sinh viên lớp: $_tenLop");
    for(var sv in _DSSV){
      print('\nThông tin: \n');
      sv.hienThiThongTin();
      print('\n Xếp loại: ${sv.xepHang()}');
    }
  }
}
