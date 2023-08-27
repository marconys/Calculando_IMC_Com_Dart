class PesoInvalidoException implements Exception {
  String error() => "Peso Inválida";

  @override
  String toString() {
    return "PesoInvalidoException: ${error()}";
  }
}