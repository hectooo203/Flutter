class ObjetoRPG {
  final String nombre;
  final String tipo;
  final double poder;
  final bool esRaro;

  ObjetoRPG({
    required this.nombre,
    required this.tipo,
    required this.poder,
    required this.esRaro,
  });
}

void main(List<String> args) {
  List<ObjetoRPG> objetos = [
    ObjetoRPG(nombre: 'espada', tipo: 'Arma', poder: 15.6, esRaro: false),
    ObjetoRPG(nombre: 'varita', tipo: 'Arma', poder: 7.5, esRaro: true),
    ObjetoRPG(nombre: 'casco', tipo: 'Armadura', poder: 30, esRaro: false),
    ObjetoRPG(nombre: 'fuerza', tipo: 'Pocion', poder: 6, esRaro: false),
    ObjetoRPG(nombre: 'vida', tipo: 'Pocion', poder: 9, esRaro: true),
    ObjetoRPG(nombre: 'botas', tipo: 'Armadura', poder: 15, esRaro: false),
    ObjetoRPG(nombre: 'pistola', tipo: 'Arma', poder: 60, esRaro: true),
  ];

  var filtrarRareza = objetos.where((rpg) => rpg.esRaro);
  var totalPoder = objetos.fold(
    0.0,
    (sumaValores, valorActual) => sumaValores + valorActual.poder,
  );
  var valorMasPoderoso = objetos.reduce(
    (valorMaximo, valorActual) =>
        valorActual.poder > valorMaximo.poder ? valorActual : valorMaximo,
  );

  Map<String, int> conteoPorTipo = {};

  for (var objeto in objetos) {
    conteoPorTipo[objeto.tipo] = (conteoPorTipo[objeto.tipo] ?? 0) + 1;
  }

  print("Hay ${filtrarRareza.length} objetos que son raros \n");

  print("El total de poder es: $totalPoder \n");

  print(
    "El objeto mas poderoso es ${valorMasPoderoso.nombre} con poder ${valorMasPoderoso.poder}\n",
  );

  objetos.sort((valora, valorb) => valorb.poder.compareTo(valora.poder));
  print("--- Objetos Ordenados Por poder ---");
  for (var objeto in objetos) {
    print(
      "Nombre: ${objeto.nombre}. Tipo: ${objeto.tipo}. Poder: ${objeto.poder}.",
    );
  }
  print("");
  conteoPorTipo.forEach((tipo, cantidad) {
    print('De tipo $tipo hay: $cantidad objetos');
  });
}
