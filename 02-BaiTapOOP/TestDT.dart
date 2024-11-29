import './DienThoai.dart';
void testDienThoai() {
  print("==== TEST DIEN THOAI ====");

  // Test tạo điện thoại hợp lệ
  var dt = DienThoai("DT-001", "iPhone 13", "Apple", 20000000, 25000000, 10, true);
  print("Tạo điện thoại hợp lệ:");
  dt.hienThiThongTin();

  // Test kiểm tra khả năng bán
  print("Điện thoại có thể bán: ${dt.isAvailableForSale()}");

  // Test tính lợi nhuận dự kiến
  print("Lợi nhuận dự kiến: ${dt.tinhLoiNhuanDuKien()}");

  // Test validation khi tạo điện thoại
  try {
    var dtInvalid = DienThoai("INVALID", "", "Apple", 0, 100000, -5, true);
  } catch (e) {
    print("Lỗi tạo điện thoại không hợp lệ: $e");
  }

  // Test setter và validation
  try {
    dt.soLuongTon = -1; // Lỗi
  } catch (e) {
    print("Lỗi cập nhật số lượng tồn: $e");
  }

  print("==========================\n");
}
