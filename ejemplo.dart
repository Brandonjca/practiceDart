import 'dart:io';

void main() {
  print("Ingresa tu nombre");
  String name = stdin.readLineSync()!;
  List<double> notasParcialUno = [];
  for (int i = 0; i<5; i++){
  print("Ingresa las notas del primer parcial de $name ${i + 1}:");
  double notas = double.parse(stdin.readLineSync()!);
  notasParcialUno.add(notas);
  }
  double promedioGeneral = notasParcialUno.reduce((a,b) => a + b ) / notasParcialUno.length;
  print("Las notas ingresadas son: $notasParcialUno y su promedio es de: $promedioGeneral");

  List<double> notasParcialDos = [];
  for (int i = 0; i<5; i++){
  print("Ingresa la nota del segundo parcial de $name ${i + 1}:");
  double notasDos = double.parse(stdin.readLineSync()!);
  notasParcialDos.add(notasDos);
 }
  double promedioGeneralDos = notasParcialDos.reduce((a, b) => a + b) / notasParcialDos.length;
  print("Las notas ingresadas son: $notasParcialDos y su promedio es de: $promedioGeneralDos");
  print("Notas generales: Parcial uno: $notasParcialUno Parcial dos: $notasParcialDos");

  double promedioFinal = promedioGeneral /2 + promedioGeneralDos /2;
  print("El promedio final de $name es de $promedioFinal");

  if (promedioFinal >= 7) {
    print("Aprobaste");
  } else {
    print("Reprobado");
  }

}
