class Gasto {
  final String tipo;
  final double monto;
  final String categoria;

  Gasto({required this.tipo, required this.monto, required this.categoria});
}

void main() {
  List<Gasto> misGastos = [
    Gasto(tipo: 'Perrito', monto: 3.5, categoria: 'Comida'),
    Gasto(tipo: 'Coche', monto: 300.50, categoria: 'Transporte'),
    Gasto(tipo: 'Alquiler', monto: 700, categoria: 'Vivienda'),
    Gasto(tipo: 'Cine', monto: 20.35, categoria: 'Ocio'),
    Gasto(tipo: 'Cena', monto: 30, categoria: 'Comida'),
  ];

  var soloComida = misGastos.where((g) => g.categoria == 'Comida');
  print('Gastos de comida: ${soloComida.length}');

  var gastosTotales = misGastos.fold(0.0, (suma, gasto) => suma + gasto.monto);
  print('Gasto total: $gastosTotales');

  var gastoMayor = misGastos.reduce((max, actual) {
    if (actual.monto > max.monto) {
      return actual;
    } else {
      return max;
    }
  });

  print('Mayor Gasto: ${gastoMayor.monto}');

  misGastos.sort((a, b) => b.monto.compareTo(a.monto));

  for (var g in misGastos) {
    print('${g.tipo}: ${g.monto}');
  }

  var gastoTotal = misGastos.fold(0.0, (suma, gasto) => (suma + gasto.monto));

  var gastoMedio = gastoTotal / misGastos.length;

  print('Gasto medio: $gastoMedio');
}
