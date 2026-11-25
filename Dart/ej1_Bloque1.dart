void main(List<String> args) {

  //Declaracion de variables
  var nombre = 'Pedro';
  var curso = '2º GSDAM';
  var nota_examen = 6;
  var nota_practica = 9;

  //Declaracion de constantes
  const porc_examen = 0.70; //Peso de los examenes (70%)
  const porc_practica = 0.30; //Peso de las practicas (30%)
  const nota_minima = 5; //Nota minima para aprobar

  var nota_final = (nota_examen * porc_examen) + (nota_practica * porc_practica);
  var resultado;
  
  if (nota_final >= nota_minima) {
    resultado = 'Aprobado';
  } else {
    resultado = 'Suspenso';
  }
  
  print('''
  ==============================
      NOTA FINAL DE ${nombre.toUpperCase()}
  ==============================

  Curso: $curso
  Nota Final: ${nota_final.toStringAsFixed(2)}
  Resultado: $resultado
    ''');

}