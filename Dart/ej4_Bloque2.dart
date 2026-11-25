void main(List<String> args) {
  
  final notas = [9.5, 7.2, 6.0, 5.0, 3.4, 11.0, -1.0, 0.0];

  calificar(notas, resultado_corto: true);
  
}

void calificar (List<double> notas, {required bool resultado_corto}) {
  for (var i in notas) {
    final resultado = switch (i) {
      > 10 => 'Nota no valida',
      >= 9 => 'Sobresaliente',
      >= 7 => 'Notable',
      >= 6 => 'Bien',
      >= 5 => 'Suficiente',
      >= 0 => 'Insuficiente',
      _ => 'Nota no valida',
    };

    if (resultado_corto == true) {
      final expresion_corta = switch (resultado) {
        == 'Sobresaliente' => 'SB',
        == 'Notable' => 'NT',
        == 'Bien' => 'BN',
        == 'Suficiente' => 'SU',
        == 'Insuficiente' => 'IN',
        == 'Nota no valida' => '--',
        _ => 'ERR'
      };
      print("Nota [$i]. Resultado: $resultado ($expresion_corta)");
    } else {
      print("Nota [$i]. Resultado: $resultado");
    }
    
  }
  return;
}