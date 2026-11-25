// ignore_for_file: file_names

class Gasto {
  final String titulo;
  final double monto;
  final String categoria;

  Gasto({required this.titulo, required this.monto, required this.categoria});
}

void main() {
  List<Gasto> misGastos = [
    Gasto(titulo: 'Hamburguesa', monto: 12.5, categoria: 'Comida'),
    Gasto(titulo: 'Metro', monto: 2.1, categoria: 'Transporte'),
    Gasto(titulo: 'Cena', monto: 25.0, categoria: 'Comida'),
  ];

  var soloComida = misGastos.where((g) => g.categoria == 'Comida').toList();
  print('Gastos de comida: ${soloComida.length}');

  double total = misGastos.fold(0, (suma, g) => suma + g.monto);
  print('Gasto Total: $total €');
}
