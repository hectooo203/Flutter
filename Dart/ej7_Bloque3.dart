void main(List<String> args) {
  List<String> nombres = [];

  nombres.addAll(['Juan', 'Maria', 'Pedro', 'Jose', 'Lucia']);

  nombres.insert(0, 'Raul');
  nombres.remove('Juan');

  String alumno1 = 'Pedro';
  String alumno2 = 'Manolo';

  if (nombres.contains(alumno1)) {
    print("Posicion del nombre $alumno1 en la lista: ${nombres.indexOf(alumno1) + 1}");
  } else {
    print("El nombre $alumno1 no esta en la lista");
  }

  if (nombres.contains(alumno2)) {
    print("Posicion del nombre en la lista: ${nombres.indexOf(alumno2) + 1}");
  } else {
    print("El nombre $alumno2 no esta en la lista");
  }

  var lista_completa = "| ";
  for (var i = 0; i < nombres.length; i++) {
    lista_completa += "Nombre ${i+1}: ${nombres[i]} | ";
  }

  print(lista_completa);
}