import 'dart:math';

void main() {
  final result = calcIMC(1.78, 64);
  print(result);

  if (calcIMC(1.78, 64) == 20.199469763918696) {
    print('OK: Deve efetuar o calculo do IMC');
  } else {
    print('ERROR: Deve efetuar o calculo do IMC');
  }

  try {
    calcIMC(0, 64);
    print('ERROR: Deve lançar um excessão se altura for menor que 1');
  } catch (e) {
    print('OK: Deve lançar um excessão se altura for menor que 1');
  }

  try {
    calcIMC(1.78, 0);
    print('ERROR: Deve lançar um excessão se peso for menor que 1');
  } catch (e) {
    print('OK: Deve lançar um excessão se peso for menor que 1');
  }
}

double calcIMC(double altura, double peso) {
  if (peso < 1) {
    throw Exception('Peso não pode ser menor que 1');
  }

  if (altura < 1) {
    throw Exception('Altura não pode ser menor que 1');
  }

  return peso / pow(altura, 2);
}
