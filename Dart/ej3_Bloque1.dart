void main(List<String> args) {
  
  final notas = [9.5, 7.2, 6.0, 5.0, 3.4, 11.0, -1.0, 0.0];
  calificar(notas);
  
}

void calificar (List<double> notas) {
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

    print("Nota [$i]. Resultado: $resultado");
  }
  return;
}