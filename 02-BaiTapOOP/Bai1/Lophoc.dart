import 'SinhVien.dart';
class Lophoc {
  String _tenLop;
  List<Sinhvien> _danhsachSV=[];
  Lophoc(this._tenLop);
String get tenLop=>_tenLop;
 set tenLop(String tenLop){
    if(tenLop.isNotEmpty){
      _tenLop=tenLop;
    }
  }
  void addSV(Sinhvien sv){
    _danhsachSV.add(sv);
  }
  void hienThiThongTin(){
        print("--------------------------------------");
    for (var sv in _danhsachSV) {
        sv.hienThiThongTin();
        print("Xếp loại: ${sv.xepLoai()}");
        print("--------------------------------------");
    }
  }
}