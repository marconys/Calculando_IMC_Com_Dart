import 'dart:math';

class Pessoa {
  //Atibutos
  String _nome;
  double _peso;
  double _altura;

  //Construtor
  Pessoa(this._nome, this._peso, this._altura);

  // Geters and Seters
  String getNome() {
    return _nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  double getPeso() {
    return _peso;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getAltura() {
    return _altura;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  //Método para calcular o IMC
  double calculaIMC() {
    var imc = _peso / pow(_altura, 2);
    return imc;
  }

  //Método retorna a situação da pessoa cujo o imc está sendo calculado.
  String retornaSituacaoIMC() {
    var imc = calculaIMC();
    var situacao = "";
    if (imc < 16) {
      situacao = "Magreza grave";
    } else if (imc >= 16 && imc <= 16.9) {
      situacao = "Magreza moderada";
    } else if (imc >= 17 && imc <= 18.4) {
      situacao = "Magreza leve";
    } else if (imc >= 18.5 && imc <= 24.9) {
      situacao = "Saudável";
    } else if (imc >= 25 && imc <= 29.9) {
      situacao = "Sobrepeso";
    } else if (imc >= 30 && imc <= 34.9) {
      situacao = "Obesidade Grau I";
    } else if (imc >= 35 && imc <= 39.9) {
      situacao = "Obesidade Grau II (severa)";
    } else if (imc >= 40) {
      situacao = "Obesidade Grau III (mórbida)";
    }
    return situacao;
  }

  @override
  String toString() {
    return "Olá $_nome, o calculo do seu IMC é: ${calculaIMC().toStringAsFixed(1)} e você está com ${retornaSituacaoIMC()}";
  }
}
