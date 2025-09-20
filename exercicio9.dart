/*9) Atualizar valor de um item
• Usar a lista de sensores do exercício anterior.
• Pedir ao usuário o nome de um sensor para atualizar.
• Se existir, pedir o novo valor e atualizar o mapa.
• Imprimir a lista atualizada.*/

import 'dart:io';

void main() {
  List<Map<String, dynamic>> sensores = [
    {"nome": "DHT22-SALA", "valor": 23.1, "unidade": "°C"},
    {"nome": "DHT22-QUARTO", "valor": 22.8, "unidade": "°C"},
    {"nome": "DHT22-COZINHA", "valor": 24.0, "unidade": "°C"},
    {"nome": "DHT22-BANHEIRO", "valor": 23.5, "unidade": "°C"},
    {"nome": "DHT22-GARAGEM", "valor": 21.9, "unidade": "°C"},
    {"nome": "DHT22-ESCRITORIO", "valor": 22.3, "unidade": "°C"},
    {"nome": "DHT22-LAVANDERIA", "valor": 23.7, "unidade": "°C"},
    {"nome": "DHT22-SACADA", "valor": 25.2, "unidade": "°C"},
    {"nome": "DHT22-HALL", "valor": 22.6, "unidade": "°C"},
    {"nome": "DHT22-DESPENSA", "valor": 21.5, "unidade": "°C"},
  ];

  String nomeSensor = "";
  double novoValor = 0;
  bool encontrou = false;

  print(" --- ATUALIZAÇÃO DE VALOR DE SENSORSE --- ");
  stdout.write("Digite o nome do sensor desejado: ");
  nomeSensor = stdin.readLineSync()!;

  for (var sensor in sensores) {
    if (sensor["nome"] == nomeSensor) {
      stdout.write("Por favor, digite o novo valor: ");
      novoValor = double.parse(stdin.readLineSync()!);

      sensor["valor"] = novoValor;

      print("Perfeito, o novo valor agora é: ${sensor["valor"]}");

      encontrou = true;
    }
  }

  if (!encontrou) {
    print("Sensor não encontrado, tente novamente!");
  }
}
