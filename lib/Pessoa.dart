class Pessoa {
  String _nome = '';
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String viewNome() {
    return _nome;
  }

  double calcularIMC() {
    if (_altura <= 0) {
      return 0;
    }
    return _peso / (_altura * _altura);
  }

  String tabelaIMC() {
    double imc = calcularIMC();

    if (imc < 16) {
      return 'Magreza grave';
    } else if (imc >= 16 && imc < 17) {
      return 'Magreza moderada';
    } else if (imc >= 17 && imc < 18.5) {
      return 'Magreza leve';
    } else if (imc >= 18.5 && imc < 25) {
      return 'Saudável';
    } else if (imc >= 25 && imc < 30) {
      return 'Sobrepeso';
    } else if (imc >= 30 && imc < 35) {
      return 'Obseidade Grau I ';
    } else if (imc >= 35 && imc < 40) {
      return 'Obseidade Grau II (Severa)';
    } else {
      return 'Obseidade Grau III (mórbida)';
    }
  }
}
