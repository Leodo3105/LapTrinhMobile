class NhanVien {
  String _maNV;
  String _hoTen;
  double _luongCoBan;

  NhanVien(this._maNV, this._hoTen, this._luongCoBan);

  String get maNV => _maNV;
  String get hoTen => _hoTen;
  double get luongCoBan => _luongCoBan;

  set maNV(String maNV) {
    if (maNV.isNotEmpty) {
      _maNV = maNV;
    }
  }

  set hoTen(String hoTen) {
    if (hoTen.isNotEmpty) {
      _hoTen = hoTen;
    }
  }

  set luongCoBan(double luongCoBan) {
    _luongCoBan = (luongCoBan > 0) ? luongCoBan : _luongCoBan;
  }

  double tinhLuong() {
    return _luongCoBan;
  }

  void hienThiThongTin() {
    print('Mã NV: $_maNV');
    print('Họ tên: $_hoTen');
    print('Lương cơ bản: $_luongCoBan');
    print('Tổng lương: ${tinhLuong()}');
  }
}
