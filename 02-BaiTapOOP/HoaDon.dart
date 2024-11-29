import 'DienThoai.dart';

class HoaDon {
  String _maHoaDon, _tenKhachHang, _soDienThoai;
  DateTime _ngayBan;
  int _soLuongMua;
  double _giaBanThucTe;
  DienThoai _dienThoaiBan;

  HoaDon(this._maHoaDon, this._ngayBan, this._soLuongMua, this._giaBanThucTe,
      this._tenKhachHang, this._soDienThoai, this._dienThoaiBan) {
    if (!_maHoaDon.startsWith("HD-") || _maHoaDon.isEmpty) {
      throw Exception("Mã hóa đơn phải có định dạng HD-XXX!");
    }
    if (_ngayBan.isAfter(DateTime.now())) {
      throw Exception("Ngày bán không được sau ngày hiện tại!");
    }
    if (_soLuongMua <= 0 || _soLuongMua > _dienThoaiBan.soLuongTon) {
      throw Exception("Số lượng mua phải lớn hơn 0 và không vượt quá tồn kho!");
    }
    if (_giaBanThucTe <= 0) {
      throw Exception("Giá bán thực tế phải lớn hơn 0!");
    }
    if (_tenKhachHang.isEmpty || _soDienThoai.isEmpty) {
      throw Exception("Thông tin khách hàng không được để trống!");
    }
  }

  DateTime get ngayBan => _ngayBan;

  double tinhTongTien() => _soLuongMua * _giaBanThucTe;

  double tinhLoiNhuan() =>
      _soLuongMua * (_giaBanThucTe - _dienThoaiBan.giaNhap);

  void hienThiHoaDon() {
    print("------------------------------");
    print("Mã hóa đơn: $_maHoaDon");
    print("Ngày bán: $_ngayBan");
    print("Tên khách hàng: $_tenKhachHang");
    print("Số điện thoại khách: $_soDienThoai");
    print("Điện thoại:");
    _dienThoaiBan.hienThiThongTin();
    print("Số lượng mua: $_soLuongMua");
    print("Giá bán thực tế: $_giaBanThucTe");
    print("Tổng tiền: ${tinhTongTien()}");
    print("Lợi nhuận: ${tinhLoiNhuan()}");
    print("------------------------------");
  }
}
