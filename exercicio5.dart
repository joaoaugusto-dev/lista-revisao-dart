/*Buscar produto pelo nome
• Usando a lista do exercício anterior,
• Perguntar ao usuário um nome de produto,
• Percorrer a lista e exibir o preço correspondente (ou “não encontrado”).*/
import 'dart:io';

void main() {
  List<Map<String, dynamic>> listaProdutos = [
    {"nome": "Arroz", "preco": 25.6},
    {"nome": "Leite", "preco": 20},
    {"nome": "Farinha", "preco": 38},
    {"nome": "Chocolate", "preco": 15},
  ];

  print("Digite o nome de um produto: ");
  String nomeRequerido = stdin.readLineSync()!;

  bool encontrou = false;

  for (var produto in listaProdutos) {
    if (produto["nome"] == nomeRequerido) {
      print("O produto procurado, está custando: ${produto["preco"]}");
      encontrou = true;
    }
  }

  if (encontrou == false) {
    print("O produto não foi encontrado!");
  }
}
