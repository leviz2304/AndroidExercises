import 'nhanvien.dart';

class Nhanvienbanhang extends Nhanvien {
  double _doanhso;
  double _hoahong;
  Nhanvienbanhang(String maNV,String hoTen,double LCB, this._doanhso,this._hoahong):super(maNV,hoTen,LCB);
  double get doanhso=>_doanhso;
  double get hoahong=>_hoahong;
  set doanhSo(double doanhSo){
    _doanhso=(doanhSo>0)?doanhSo:_doanhso;

  }
  set hoahong(double hoahong){
    _hoahong=hoahong>=0&&hoahong<=1?hoahong:_hoahong;
  }
  @override
  double tinhLuong(){
    return LCB+doanhso*hoahong;
  }
  @override
  void hienThiThongTin() {
    super.hienThiThongTin();
    print("Doanh số: $doanhso");
        print("hoa hồng: $hoahong");
      print("Tổng lương ${tinhLuong()}");
  }
}