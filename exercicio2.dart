/*Números pares e ímpares
• Ler 6 números inteiros do usuário e armazenar em uma List<int>.
• Percorrer a lista com for-in.
• Exibir apenas os números pares e a quantidade de ímpares.*/

import 'dart:io';

void main() {
  List<int> numeros = [];

  print("---- Números pares e ímpares ----");

  for (int i = 0; i < 6; i++) {
    print("Por favor, digite o ${i + 1}° número: ");
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  List<int> pares = [];
  int impares = 0;

  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] % 2 == 0) {
      pares.add(numeros[i]);
    } else {
      impares++;
    }
  }

  print("Os números pares são: ${pares}, e temos $impares números ímpares.");
}
