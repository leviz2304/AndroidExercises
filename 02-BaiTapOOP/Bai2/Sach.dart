class Sach {
  String _maSach;
  String _tenSach;
  String _tacgia;
  bool _TrangThaiMuon;
  //
  Sach(this._maSach,this._tenSach,this._tacgia,this._TrangThaiMuon);
  String get tenSach=>_tenSach;
  String get tacgia=>_tacgia;
  String get maSach=>_maSach;
  bool get trangthaiMuon=>_TrangThaiMuon;
  set maSach(String maSach){
    if(maSach.isNotEmpty){
      _maSach=maSach;
    }
  }
  set tenSach(String tenSach){
    if(tenSach.isNotEmpty){
      _tenSach=tenSach;
    }
  }
  set tacgia(String tacgia){
    if(tacgia.isNotEmpty){
      _tacgia=tacgia;
    }
  }
  set trangthaiMuon(bool trangthaiMuon){
    if(!trangthaiMuon){
      trangthaiMuon=_TrangThaiMuon;
    }
  }
  void hienThiThongTin(){
    print("Mã sách:$maSach");
    print("Tên sách:$tenSach");
    print("Tác Giả:$tacgia");
    print("Trạng Thái Mượn:$trangthaiMuon");
  }
}