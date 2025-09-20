/*Produtos e preços
• Criar uma List<Map<String,dynamic>> onde cada produto tem:
• nome (String) e preco (double)
• Ler 3 produtos e seus preços pelo teclado.
• Exibir todos com for-in.*/

import 'dart:io';

void main() {
  List<Map<String, dynamic>> produtos = [];

  for (int i = 0; i < 3; i++) {
    print("Digite o nome do ${i + 1}° produto: ");
    String nome = stdin.readLineSync()!;
    print("Digite o preço do ${i + 1}° produto: ");
    double preco = double.parse(stdin.readLineSync()!);

    produtos.add({"nome": nome, "preco": preco});
  }

  print(" --- Lista de Estoque --- ");
  for (var produto in produtos) {
    print('Produto: ${produto["nome"]} => ${produto["preco"]}');
  }
}
