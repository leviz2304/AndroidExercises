import 'DienThoai.dart';
import 'HoaDon.dart';

class CuaHang {
  String _tenCuaHang, _diaChi;
  List<DienThoai> _danhSachDienThoai = [];
  List<HoaDon> _danhSachHoaDon = [];

  CuaHang(this._tenCuaHang, this._diaChi);

  void themDienThoai(DienThoai dt) => _danhSachDienThoai.add(dt);

  void capNhatDienThoai(DienThoai dt) {
    for (var i = 0; i < _danhSachDienThoai.length; i++) {
      if (_danhSachDienThoai[i].maDienThoai == dt.maDienThoai) {
        _danhSachDienThoai[i] = dt;
        return;
      }
    }
    throw Exception("Không tìm thấy điện thoại cần cập nhật!");
  }

  void ngungKinhDoanh(String maDienThoai) {
    final dt = _danhSachDienThoai.firstWhere(
      (dt) => dt.maDienThoai == maDienThoai,
      orElse: () {
        throw Exception("Không tìm thấy điện thoại!");
      },
    );
    dt.tinhTrang = false;
  }

  void taoHoaDon(String maHD, DateTime ngayBan, int soLuong, double giaBanThucTe,
      String tenKH, String sdt, DienThoai dienThoai) {
    if (!dienThoai.isAvailableForSale()) {
      throw Exception("Điện thoại không khả dụng!");
    }
    final hoaDon = HoaDon(maHD, ngayBan, soLuong, giaBanThucTe, tenKH, sdt, dienThoai);
    _danhSachHoaDon.add(hoaDon);
    dienThoai.soLuongTon -= soLuong;
  }
DienThoai timKiemDienThoai({String? ma, String? ten, String? hang}) {
  return _danhSachDienThoai.firstWhere(
      (dt) =>
          (ma != null && dt.maDienThoai == ma) ||
          (ten != null && dt.tenDienThoai.contains(ten)) ||
          (hang != null && dt.hangSanXuat.contains(hang)),
      orElse: () => throw Exception("Không tìm thấy điện thoại!"));
}

  void thongKeDoanhThuLoiNhuan(DateTime tuNgay, DateTime denNgay) {
    final hoaDonTrongKhoang = _danhSachHoaDon.where((hd) =>
        hd.ngayBan.isAfter(tuNgay) && hd.ngayBan.isBefore(denNgay));
    final doanhThu =
        hoaDonTrongKhoang.fold(0.0, (sum, hd) => sum + hd.tinhTongTien());
    final loiNhuan =
        hoaDonTrongKhoang.fold(0.0, (sum, hd) => sum + hd.tinhLoiNhuan());
    print("Doanh thu: $doanhThu");
    print("Lợi nhuận: $loiNhuan");
  }
}
