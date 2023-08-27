import 'package:meu_app_imc/exception/altura_invalida_exception.dart';
import 'package:meu_app_imc/exception/peso_invalido_exception.dart';
import 'package:meu_app_imc/models/console_utils.dart';
import 'package:meu_app_imc/models/pessoa.dart';

void executeIMC() {
  print("Seja bem vindo ao sistema de cálculo IMC");
  
  String nome = ConsoleUtils.lerConsoleComMenssagem("Digite o seu nome:");
  if (nome.trim() == "") {
    nome = "Usuário anônimo";
  }

  double peso;
  try {
    peso = double.parse(ConsoleUtils.lerConsoleComMenssagem("Digite o seu peso!"));
  } catch (e) {
    throw PesoInvalidoException();
  }

  double altura;
  try {
   altura = double.parse(ConsoleUtils.lerConsoleComMenssagem("Digite a sua altura!"));
  } catch (e) {
    throw AlturaInvalidaException();
  }

  Pessoa pessoa = Pessoa(nome, peso, altura);

  print(pessoa.toString());
}
