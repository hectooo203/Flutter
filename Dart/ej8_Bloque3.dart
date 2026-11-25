void main(List<String> args) {
  List<String> Robotica = ['Lucía', 'Pablo', 'Lucía', 'Marta', 'Iván', 'Pablo'];
  Set<String> Fotografia = {'Pablo', 'Sara', 'Iván'};

  Set<String> Robotica_sin_repetidos = Robotica.toSet();
  
  var alumnos_diferentes = Robotica_sin_repetidos.length + Fotografia.length;
  print("Alumnos diferentes: ${alumnos_diferentes}");

  Set<String> alumnos_en_ambas = Fotografia.intersection(Robotica_sin_repetidos);
  print("Alumnos en ambas optativas: $alumnos_en_ambas");

  Set<String> alumnos_en_alguna = Fotografia.union(Robotica_sin_repetidos);
  print("Alumnos que hay en alguna optativa: $alumnos_en_alguna");

  Set<String> alumnos_en_una = Robotica_sin_repetidos.difference(Fotografia);
  print("Alumnos que hay solo en Robotica: $alumnos_en_una");

  print("Robotica sin volver a añadir a Lucía. Num de alumnos: ${Robotica_sin_repetidos.length}");
  Robotica_sin_repetidos.add('Lucía');
  print("Robotica con Lucía vuelta a ser añadida. Numero de alumnos: ${Robotica_sin_repetidos.length}");
}