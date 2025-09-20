/*7) Maior e menor valor da lista
• Ler 6 números em uma lista.
• Usar for-in para descobrir o maior e o menor número digitado.
• Exibir os dois valores no final.*/

void main() {
  List<int> numeros = [17, 83, 42, 5, 999, 23, 67, 301, 12, 76, 58, 2048];
  int maior = numeros[0];
  int menor = numeros[0];

  for (var numero in numeros) {
    if (numero > maior) {
      maior = numero;
    } else if (numero < menor) {
      menor = numero;
    }
  }

  print("$maior, $menor");
}
