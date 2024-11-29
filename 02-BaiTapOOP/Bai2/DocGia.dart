import 'Sach.dart';

class Docgia {
  String _maDocGia;
  String _hoTen;
  List<Sach> sachs=[];
  Docgia(this._maDocGia,this._hoTen);
  String get maDocGia=>_maDocGia;
  String get hoTen=>_hoTen;
  set maDocGia(String maDocGia){
    if(maDocGia.isNotEmpty){
      _maDocGia=maDocGia;
    }
  }
  set hoTen(String hoTen){
    if(hoTen.isNotEmpty){
      _hoTen=hoTen;
    }
  }
  void addSach(Sach s){
    sachs.add(s);
  }
  void checkMuon(){
    
  }
    void hienThiThongTin(){
        print("--------------------------------------");
    for (var s in sachs) {
        s.hienThiThongTin();
        print("--------------------------------------");
    }
  }
}