import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  //ler o valor digitado pelo usuário.
  static String lerConsole() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  //Apresentar menssagem para o usuário e retornar o métdo lerConsole.
  static String lerConsoleComMenssagem(String mensage) {
    print(mensage);
    return lerConsole();
  }
}
