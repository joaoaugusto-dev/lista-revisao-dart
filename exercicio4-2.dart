/*Produtos e preços
• Criar uma List<Map<String,dynamic>> onde cada produto tem:
• nome (String) e preco (double)
• Ler 3 produtos e seus preços pelo teclado.
• Exibir todos com for-in.*/

import 'dart:io';

void main() {
  List<Map<String, dynamic>> listaProdutos = [];

  for (int i = 0; i < 3; i++) {
    print("-----------------------------------------");
    print("Digite o nome do seu ${i + 1}° produto: ");
    String produto = stdin.readLineSync()!;
    print("Digite o preço do seu ${i + 1}° produto: ");
    double valor = double.parse(stdin.readLineSync()!);

    listaProdutos.add({"nome": produto, "preco": valor});
  }

  for (var produto in listaProdutos) {
    print("Nome do produto: ${produto["nome"]} ==> Preço: ${produto["preco"]}");
  }
}
