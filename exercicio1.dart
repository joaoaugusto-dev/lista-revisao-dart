/*Cadastro simples de nomes
• Ler 5 nomes digitados pelo usuário.
• Armazenar em uma List<String>.
• Ao final, exibir todos os nomes usando for-in.*/

import 'dart:io';

void main() {
  List<String> nomes = [];

  print("---- Guardando nomes em uma lista ----");
  for (int i = 1; i <= 5; i++) {
    print("Digite o ${i}° nome: ");
    nomes.add(stdin.readLineSync()!);
  }

  for (int i = 0; i < nomes.length; i++) {
    print("${i + 1}° nome: ${nomes[i]}");
  }
}
