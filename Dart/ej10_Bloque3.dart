void main(List<String> args) {
  bool esAdmin = false;
  List<String> modulos = ['Acceso a Datos', 'PSP', 'DI', 'SGE'];
  List<String>? extras = null;

  List<String> menu = [
    'Inicio',
    if (esAdmin == true) 'Administracion' else 'Ayuda',
    for (var modulo in modulos) 'Modulo $modulo',
    ...?extras,
  ];

  for (var opciones in menu) {
    print(opciones);
  }
}
