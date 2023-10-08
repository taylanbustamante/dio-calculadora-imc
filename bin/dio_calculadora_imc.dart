import 'dart:convert';
import 'dart:io';
import 'package:dio_calculadora_imc/classes/pessoa.dart';

void main(List<String> arguments) {
  var pessoa1 = Pessoa();

  //ler do terminal nome, altura e peso da Pessoa

  String ? nome;
  String? altura;
  String? peso;

  do {
    print("Digite o Nome da Pessoa:");
    nome = stdin.readLineSync(encoding: utf8);

  } while (nome == null );

  pessoa1.setNome(nome);

  do {
    print("Digite a altura de $nome em metros:");
    altura = stdin.readLineSync(encoding: utf8);
  } while (altura == null);

  pessoa1.setAltura(double.parse(altura));

  do {
    print("Digite o peso de $nome em kg:");
    peso = stdin.readLineSync(encoding: utf8);

  } while (peso == null );

  pessoa1.setAltura(double.parse(altura));
  pessoa1.setPeso(double.parse(peso));

  //mostrar o resultado

  var imc = (pessoa1.calculaImc()).toStringAsFixed(2);
  var classificaImc = (pessoa1.classificacaoImc()).toString();

  print("O IMC de $nome é: $imc");
  print(" Com este IMC $nome é classificado como $classificaImc");
}