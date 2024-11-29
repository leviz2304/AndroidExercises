import 'SinhVien.dart';
import 'Lophoc.dart';
void main(){
  var sv=Sinhvien("Pickleball", 20,"SV001", 8.5);

  var sv1=Sinhvien("Pickleball1", 20,"SV001", 8.5);

  var sv2=Sinhvien("Pickleball2", 20,"SV001", 8.5);

  var sv3=Sinhvien("Pickleball2", 20,"SV001", 8.5);
  // print(sv.diemTB);
  // sv.hoTen='Nguyen Van B';
  // print(sv.hoTen);
  // sv.hoTen="";
  // print(sv.hoTen);
  // print(sv.xepLoai());
  // sv.hienThiThongTin();
  var lh=Lophoc("21DTHE5");
  print(lh.tenLop);
  lh.addSV(sv);
  lh.addSV(sv1);
  lh.addSV(sv2);
  lh.addSV(sv3);

  lh.hienThiThongTin();
  
}