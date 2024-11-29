class Sinhvien {
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _diemTB;
  //
  Sinhvien(this._hoTen,this._tuoi,this._maSV,this._diemTB);
  String get hoTen=>_hoTen;
  int get tuoi=>_tuoi;
  String get maSV=>_maSV;
  double get diemTB=>_diemTB;
  set hoTen(String hoTen){
    if(hoTen.isNotEmpty){
      _hoTen=hoTen;
    }
  }
  set tuoi(int tuoi){
    _tuoi=(tuoi>0)?tuoi:_tuoi;
  }
  set maSV(String maSV){
    _maSV=(maSV.isNotEmpty)?maSV:_maSV;
  }
  set diem(double diem){
    if(diemTB>=0 && diemTB<=10){
      _diemTB=diem;
    }
  }
  void hienThiThongTin(){
    print("Họ Tên:$hoTen");
    print("Tuổi:$tuoi");
    print("Mã Sinh Viên:$maSV");
    print("Điểm:$diemTB");
  }
  String xepLoai(){
    if(_diemTB>=8.0) return "Giỏi";
    if(_diemTB>=6.5) return "Khá";
    if(_diemTB>=5.0) return "Trung Bình";
    return "Yếu";
  }
}
