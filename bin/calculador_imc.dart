import 'dart:convert';
import 'dart:io';
import 'package:calculador_imc/Pessoa.dart';

void main(List<String> arguments) {
  try {
    stdout.write('Insira um nome: ');
    var nome = stdin.readLineSync(encoding: utf8) ?? "";

    stdout.write('Insira um peso: ');
    var pesoStr = stdin.readLineSync(encoding: utf8) ?? "";
    var peso = double.parse(pesoStr);

    stdout.write('Insira uma altura: ');
    var alturaStr = stdin.readLineSync(encoding: utf8) ?? "";
    var altura = double.parse(alturaStr);

    Pessoa pessoa = Pessoa(nome, peso, altura);
    double imc = pessoa.calcularIMC();
    String imcConvert = imc.toStringAsFixed(2);

    print(
        'o IMC de ${pessoa.viewNome()} é $imcConvert, sua condição atual é: ${pessoa.tabelaIMC()}');
  } catch (e) {
    print('Error: $e');
  }
}
