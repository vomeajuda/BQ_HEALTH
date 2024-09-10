String classificarIMC(double imc) {
  if (imc < 18.5) { //verificacao de classificao do imc de acordo com o numero do imc
    return 'Abaixo do Peso';
  } else if (imc < 24.9) {
    return 'Peso Normal';
  } else if (imc < 29.9) {
    return 'Sobrepeso';
  } else if (imc < 34.9) {
    return 'Obesidade grau 1';
  } else if (imc < 39.9) {
    return 'Obesidade grau 2';
  } else if (imc >= 40){
    return 'Obesidade grau 3';
  } else {
    return 'Ta morto';
  }
}
