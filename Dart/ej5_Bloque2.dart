void main() {

  final esAprobado = (double nota) => nota >= 5.0;

  List<double> notas = [3.5, 7.0, 5.0, 4.9, 9.2];

  // for (var nota in notas) {
  //   if (esAprobado(nota)) {
  //     print('Aprobada: $nota');
  //   }
  // }

  filtrar(notas, esAprobado);
}

void filtrar(List<double> notas, bool Function(double) condicion)  {
  List<double> notas_aprobadas = [];
  List<double> mayores_9 = [];
  final mayoresde9 = (double nota) => nota >= 9;

  for (var i in notas) {
    if (condicion(i)) {
      notas_aprobadas.add(i);
    }
    if(mayoresde9(i)) {
      mayores_9.add(i);
    }
  }

  print("Aprobadas $notas_aprobadas; mayores de 9 $mayores_9");
}