import './DienThoai.dart';
import './CuaHang.dart';
import './HoaDon.dart';
void testCuaHang() {
  print("==== TEST CUA HANG ====");

  var cuaHang = CuaHang("Cửa hàng ABC", "123 Đường XYZ");

  // Thêm điện thoại
  var dt1 = DienThoai("DT-001", "iPhone 13", "Apple", 20000000, 25000000, 10, true);
  var dt2 = DienThoai("DT-002", "Galaxy S22", "Samsung", 15000000, 20000000, 5, true);
  cuaHang.themDienThoai(dt1);
  cuaHang.themDienThoai(dt2);
  print("Danh sách điện thoại sau khi thêm:");
  cuaHang.thongKeDoanhThuLoiNhuan(DateTime(2023, 1, 1), DateTime.now());

  // Tạo hóa đơn hợp lệ
  cuaHang.taoHoaDon("HD-001", DateTime.now(), 2, 24000000, "Nguyen Van A", "0123456789", dt1);
  print("Hóa đơn đã được tạo:");

  // Thống kê doanh thu và lợi nhuận
  cuaHang.thongKeDoanhThuLoiNhuan(DateTime(2023, 1, 1), DateTime.now());

  // Test tìm kiếm (chưa implement đầy đủ)
  print("==== Tìm kiếm điện thoại theo mã: ====");
  var dtFound = cuaHang.timKiemDienThoai(ma: "DT-001");
  dtFound.hienThiThongTin();

  print("==========================\n");
}
