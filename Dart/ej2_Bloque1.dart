void main() {
  final alumnos = 47;
  final grupos = 4;
  final curso = 'Desarrollo de Interfaces';

  var alumnos_repartidos = alumnos ~/ grupos;
  var alumnos_restantes = alumnos % grupos;
  var media_grupos = alumnos / grupos;

  print('''
===============================
 REPARTO DE ALUMNOS POR GRUPOS
===============================

Curso: ${curso.toUpperCase()}
Alumnos a repartir: $alumnos
Grupos: $grupos

Alumnos en cada grupo: $alumnos_repartidos
Alumnos restantes: $alumnos_restantes
Media exacta por grupo: ${media_grupos.toStringAsFixed(3)}
''');
}
