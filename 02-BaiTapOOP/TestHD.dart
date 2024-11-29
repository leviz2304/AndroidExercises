import './DienThoai.dart';
import './HoaDon.dart';
void testHoaDon() {
  print("==== TEST HOA DON ====");

  // Tạo điện thoại để bán
  var dt = DienThoai("DT-001", "iPhone 13", "Apple", 20000000, 25000000, 10, true);

  // Test tạo hóa đơn hợp lệ
  var hoaDon = HoaDon("HD-001", DateTime.now(), 2, 24000000, "Nguyen Van A", "0123456789", dt);
  print("Hóa đơn hợp lệ:");
  hoaDon.hienThiHoaDon();

  // Test tính tổng tiền và lợi nhuận
  print("Tổng tiền hóa đơn: ${hoaDon.tinhTongTien()}");
  print("Lợi nhuận hóa đơn: ${hoaDon.tinhLoiNhuan()}");

  // Test validation khi tạo hóa đơn
  try {
    var hoaDonInvalid = HoaDon("INVALID", DateTime.now().add(Duration(days: 1)), 20, 0,
        "", "INVALID", dt); // Lỗi
  } catch (e) {
    print("Lỗi tạo hóa đơn không hợp lệ: $e");
  }

  print("==========================\n");
}
