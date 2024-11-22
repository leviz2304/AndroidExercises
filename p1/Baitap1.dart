// Giải phương trình ax^2+bx+c=0
import 'dart:io';
import 'dart:math';

void main() {
  double a = 0, b = 0, c = 0;
  do {
    stdout.write("Nhap a khac 0:");
    String? input = stdin.readLineSync();
    if (input != null) {
      a = double.tryParse(input) ?? 0;
    }
    if (a == 0) print("Vui long nhap lai");
  } while (a == 0);
  //input b
  stdout.write("Nhap b:");
  String? inputb = stdin.readLineSync();
  if (inputb != null) {
    b = double.tryParse(inputb) ?? 0;
  }
  stdout.write("Nhap c:");
  String? inputc = stdin.readLineSync();
  if (inputc != null) {
    c = double.tryParse(inputc) ?? 0;
  }
  double delta=b*b-(4*a*c);
  print("Phuong trinh ${a}x^2 +${b}x+${c}");
  if(delta<0)
    print("Vo nghiem");
    else if(delta==0){
      double x=-b/(2*a);
      
      x=double.parse(x.toStringAsFixed(2));
      print("Phuong trinhco nghiem kep $x");
    }else{
      double x1=(-b+sqrt(delta))/(2*a);
      double x2=(-b-sqrt(delta))/(2*a);
      x1=double.parse(x1.toStringAsFixed(2));
      x2=double.parse(x2.toStringAsFixed(2));
      print("Phuong trinh co 2 nghiem phan biet");
      print("x1: $x1");
      print("x2: $x2");
    }
}
