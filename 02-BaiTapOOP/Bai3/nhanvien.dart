class Nhanvien {
  String _maNV;
  String _hoTen;
  double _LCB;
  Nhanvien(this._maNV,this._hoTen,this._LCB);
  String get maNV=>_maNV;
  String get hoTen=>_hoTen;
  double get LCB=>_LCB;
  set maNV(String maNV){
    _maNV=(maNV.isNotEmpty)?maNV:_maNV;

  }
  set hoTen(String hoTen){
    _hoTen=(hoTen.isNotEmpty)?hoTen:_hoTen;
  }
  set LCB(double LCB){
    if(LCB>=0){
      _LCB=LCB;
    }
  }
  double TinhLuong(){
    return LCB;
  }
  void hienThiThongTin(){
    print("$_maNV");
    print("$_hoTen");
    print("$_LCB");
    print("Tổng Lương: ${TinhLuong()}");
  }
}