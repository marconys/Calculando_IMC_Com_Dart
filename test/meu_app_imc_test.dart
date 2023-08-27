import 'package:test/test.dart';
import 'package:meu_app_imc/models/pessoa.dart';

void main() {
  test('Calcula o IMC.', () {
    var pessoa = Pessoa("Teste Nildo", 80, 1.80);
    expect(pessoa.calculaIMC(), 24.691358024691358);
  });

  test('Retorna a Situação da pessoa de acordo com o IMC calculado.', () {
    var pessoa = Pessoa("Teste Nildo", 80, 1.80);
    var situacao = pessoa.retornaSituacaoIMC();
    expect(situacao, "Saudável");
  });
}
