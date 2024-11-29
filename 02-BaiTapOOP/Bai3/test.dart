import 'nhanvien.dart';
import 'nhanvienbanhang.dart';

void main(){
  var nv=Nhanvien("SSS", "PickleBall", 5000000);
  nv.hienThiThongTin();
  var nv2=Nhanvienbanhang(nv.maNV,nv.hoTen,nv.LCB,30,300000);
  nv2.hienThiThongTin();
}