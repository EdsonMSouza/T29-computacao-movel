import 'dart:math';

class Operacoes {
  /// Faz o somatório entre dois valores
  ///
  /// parâmetros: valor1, valor2
  ///
  /// Ex.: somar(10,20)
  ///
  /// retorno: dynamic
  dynamic somar(dynamic v1, dynamic v2) {
    return v1 + v2;
  }

  dynamic multiplicar(dynamic v1, dynamic v2) {
    return v1 * v2;
  }

  dynamic potencia(dynamic base, dynamic expoente) {
    return pow(base, expoente);
  }

  bool isPar(int valor) {
    return (valor % 2 == 0);
  }
}
