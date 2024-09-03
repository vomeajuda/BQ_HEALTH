String classificarIMC(double imc) {
  if (imc < 18.5) { //verificacao de classificao do imc de acordo com o numero do imc
    return 'Abaixo do Peso';
  } else if (imc >= 18.5 && imc <= 24.9) {
    return 'Peso Normal';
  } else if (imc >= 25 && imc <= 29.9) {
    return 'Sobrepeso';
  } else if (imc >= 30 && imc <= 34.9) {
    return 'Obesidade grau 1';
  } else if (imc >= 35 && imc <= 39.9) {
    return 'Obesidade grau 2';
  } else {
    return 'Obesidade grau 3';
  }
}
