import 'package:dio_calculadora_imc/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  // Test case for setting and getting nome.
  test('Set and Get Nome Test', () {
    final pessoa = Pessoa();
    pessoa.setNome('John');
    expect(pessoa.getNome(), 'John');
  });

  // Test case for setting and getting altura.
  test('Set and Get Altura Test', () {
    final pessoa = Pessoa();
    pessoa.setAltura(1.75);
    expect(pessoa.getAltura(), 1.75);
  });

  // Test case for setting and getting peso.
  test('Set and Get Peso Test', () {
    final pessoa = Pessoa();
    pessoa.setPeso(70.0);
    expect(pessoa.getPeso(), 70.0);
  });

  // Test case for calculating BMI.
  test('Calculate IMC Test', () {
    final pessoa = Pessoa();
    pessoa.setAltura(1.75);
    pessoa.setPeso(70.0);
    expect(pessoa.calculaImc(), closeTo(22.86, 0.01)); // Close enough.
  });

  // Test case for classifying BMI.
  test('Classify IMC Test', () {
    final pessoa = Pessoa();
    pessoa.setAltura(1.75);
    pessoa.setPeso(70.0);
    expect(pessoa.classificacaoImc(), 'Saudavel');
  });

}