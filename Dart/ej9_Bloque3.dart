void main(List<String> args) {
  //Declaracion del mapa
  Map<String, String> agenda = {
    'Mama' : '612345678',
    'Papa' : '666777888',
    'Hermano' : '677888952',
    'Amigo' : '678945612'
  };

  //Busqueda de contactos y muestreo de su correspondiente telefono
  print(buscar('Hermano', agenda) ?? 'Contacto no encontrado');
  print(buscar('Tio', agenda) ?? 'Contacto no encontrado');

  //Agregacion, eliminacion y modificacion de contactos y numeros
  agenda['Abuelo'] = '676767676';
  agenda['Amigo'] = '677777777';
  agenda.remove('Hermano');

  //Muestra de agenda completa

  String nombre_telefono = "| ";
  for (var entrada in agenda.entries) {
    String nombre = entrada.key;
    String telefono = entrada.value;

    nombre_telefono += "$nombre -> $telefono |";
  }

  print(nombre_telefono);
}

//Funcion de busqueda de contactos, sino devuelve null
String? buscar(String nombre, Map<String, String> agenda) {
    if (agenda.containsKey(nombre)) {
      return agenda[nombre];
    } else {
      return null;
    }
}