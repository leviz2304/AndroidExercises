import 'dart:io';

void main() {
  int a = 0;
  List<int> bits = [];
  do {
    stdout.write("Nhập số nguyên dương a: ");
    String? input = stdin.readLineSync();
    if (input != null) {
      a = int.tryParse(input) ?? 0;
    }
    if (a <= 0) print("Vui lòng nhập lại số lớn hơn 0.");
  } while (a <= 0);

  int temp = a;
  do {
    bits.add(temp % 2);
    temp = temp ~/ 2;
  } while (temp != 0);

  bits = bits.reversed.toList();
  print("Ma nhi phan cua $a la: ${bits.join()}");
}
