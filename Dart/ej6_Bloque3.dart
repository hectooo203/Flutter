
void main() {
  List<double> notas = [];

  notas.add(6.5);
  notas.add(3.0);
  notas.add(8.75);
  notas.add(5.0);

  notas.addAll([9.0, 4.5]);

  notas.remove(3.0);

  var nota_total = 0.0;
  var media_global;
  var linea_completa = "| ";

  for (var i = 0; i < notas.length; i++) {
    linea_completa += "Nota ${i+1}: ${notas[i]} | ";
    nota_total += notas[i];
  }

  print(linea_completa);
  print("Media global: ${media_global = nota_total / notas.length}");
}