import 'dart:math';

class Pessoa {
  String _nome = "";
  double _altura = 0;
  double _peso = 0;
  double _imc = 0;

  void setNome(String nome){
    _nome = nome;
  }
  void setAltura(double altura){
    _altura = altura;
  }

  void setPeso(double peso){
    _peso = peso;
  }

  String getNome(){
    return _nome;
  }
  double  getAltura(){
    return _altura;
  }
  double getPeso(){
    return _peso;
  }

  double calculaImc() {

    _imc = _peso / (pow(_altura, 2));

    return _imc;
  }

  String classificacaoImc() {

    var imc = calculaImc();

    if (_imc < 16) {
      return "Magreza grave";

    } else if (_imc >= 16 && _imc < 17) {
      return "Magreza moderada";

    } else if (_imc >= 17 && _imc < 18.5) {
      return "Magreza leve";

    } else if (imc >= 18.5 && imc < 25) {
      return "Saudavel";

    } else if (_imc >= 25 && _imc < 30) {
      return "Sobrepeso";

    } else if (_imc >= 30 && _imc < 35) {
      return "Obesidade Grau I";

    } else if (_imc >= 35 && _imc < 40) {
      return "Obesidade Grau II (severa)";

    } else if (_imc >= 40) {
      return "Obesidade Grau III (morbida)";

    } else {
      return "Dados insuficientes para calculo do IMC";
    }
  }
}