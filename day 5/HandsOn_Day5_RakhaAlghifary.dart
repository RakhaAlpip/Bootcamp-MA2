import "ext_day5.dart";

double add(double angka1, double angka2) {
  return angka1 + angka1;
}

double subtract(double angka1, double angka2) {
  return angka1 - angka2;
}

double multiply(double angka1, double angka2) {
  return angka1 * angka2;
}

double divide(double angka1, double angka2) {
  if (angka2 != 0) {
    return angka1 / angka2;
  } else {
    throw ArgumentError("Gak bisa melakukan pembagian oleh nol.");
  }
}
void main(){
    double hasiltAdd = add(10, 5);
  print('Hasil pertambahan: 10 + 5 = $hasiltAdd');

  double hasilSubtract = subtract(10, 5);
  print('Hasil pengurangan: 10 - 5 = $hasilSubtract');

  double hasilMultiply = multiply(10, 5);
  print('Hasil perkalian: 10 * 5 = $hasilMultiply');
  
  try {
    double hasilDivide = divide(10, 5);
    print('Hasil pembagian: 10 / 5 = $hasilDivide');
    
    double hasilDivideByZero = divide(10, 0);
    print('Hasil pembagian: 10 / 0 = $hasilDivideByZero');
  } catch (e) {
    print(e);
  }
   {
  int a = 10;
  int b = 5;
  int c = 10;

  print(a.isGreaterOrEqual(b));
  print(a.isGreaterOrEqual(c));
  print(b.isGreaterOrEqual(a));
}
}
