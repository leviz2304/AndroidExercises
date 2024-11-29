class DienThoai {
  String _maDienThoai, _tenDienThoai, _hangSanXuat;
  double _giaNhap, _giaBan;
  int _soLuongTon;
  bool _tinhTrang;

  DienThoai(this._maDienThoai, this._tenDienThoai, this._hangSanXuat, this._giaNhap, this._giaBan,
      this._soLuongTon, this._tinhTrang) {
    if (!_maDienThoai.startsWith("DT-") || _maDienThoai.isEmpty) {
      throw Exception("Mã điện thoại phải có định dạng DT-XXX!");
    }
    if (_tenDienThoai.isEmpty || _hangSanXuat.isEmpty) {
      throw Exception("Tên điện thoại và hãng sản xuất không được để trống!");
    }
    if (_giaNhap <= 0 || _giaBan <= 0 || _giaBan <= _giaNhap) {
      throw Exception("Giá nhập và giá bán phải lớn hơn 0, giá bán phải lớn hơn giá nhập!");
    }
    if (_soLuongTon < 0) {
      throw Exception("Số lượng tồn phải lớn hơn hoặc bằng 0!");
    }
  }

  String get maDienThoai => _maDienThoai;
  String get tenDienThoai => _tenDienThoai;
  String get hangSanXuat => _hangSanXuat;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;
  int get soLuongTon => _soLuongTon;
  bool get tinhTrang => _tinhTrang;

  set soLuongTon(int giaTri) {
    if (giaTri >= 0) {
      _soLuongTon = giaTri;
    } else {
      throw Exception("Số lượng tồn phải lớn hơn hoặc bằng 0!");
    }
  }

  set tinhTrang(bool giaTri) => _tinhTrang = giaTri;

  bool isAvailableForSale() => _tinhTrang && _soLuongTon > 0;

  int tinhLoiNhuanDuKien() => ((_giaBan - _giaNhap) * _soLuongTon).toInt();

  void hienThiThongTin() {
    print("---------------------------");
    print("Mã điện thoại: $_maDienThoai");
    print("Tên điện thoại: $_tenDienThoai");
    print("Hãng sản xuất: $_hangSanXuat");
    print("Giá nhập: $_giaNhap");
    print("Giá bán: $_giaBan");
    print("Số lượng tồn: $_soLuongTon");
    print("Tình trạng: ${_tinhTrang ? "Còn kinh doanh" : "Ngừng kinh doanh"}");
    print("---------------------------");
  }
}
