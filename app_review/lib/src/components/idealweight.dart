String calcularPI(double altura) {
  double pesomax = 24.9 * altura * altura;
  double pesomin = 18.5 * altura * altura;
  return 'Peso máximo: ${pesomax.toStringAsFixed(2)} kg\nPeso mínimo: ${pesomin.toStringAsFixed(2)} kg';
}
