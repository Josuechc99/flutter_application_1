class AbogadosProvider {
  late List<Map<String, dynamic>> _abogados;

  static final AbogadosProvider _instancia = AbogadosProvider._privado();

  AbogadosProvider._privado() {
    _abogados = [
     
    ];
  }

  factory AbogadosProvider() {
    return _instancia;
  }

  List<Map<String, dynamic>> get abogados{
    return _abogados;
  }

  void agregarAbogados(Map<String, dynamic> nuevoAbogado) {
    _abogados.add(nuevoAbogado);
  }
}