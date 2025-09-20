/*8) Cadastro de sensores
• Ler nome, valor e unidade de 4 sensores.
• Armazenar em List<Map<String,dynamic>>.
• Percorrer com for-in e:
• se valor > 30, imprimir ALERTA ao lado do sensor
• caso contrário, imprimir OK*/

import 'dart:io';

void main() {
  List<Map<String, dynamic>> sensores = [];

  String nome = "";
  int valor = 0;
  String unidade = "";

  print(" ------ Cadastro de sensores ------ ");
  for (int i = 0; i < 4; i++) {
    print(" ----- Cadastro do ${i + 1}° sensor ------ ");
    stdout.write("Digite o nome do sensor: ");
    nome = stdin.readLineSync()!;
    stdout.write("Digite o valor do sensor: ");
    valor = int.parse(stdin.readLineSync()!);
    stdout.write("Digite a unidade do sensor: ");
    unidade = stdin.readLineSync()!;

    sensores.add({"nome": nome, "valor": valor, "unidade": unidade});
  }

  print(" --- SITUAÇÃO DOS SENSORES --- ");

  int i = 1;
  for (var sensor in sensores) {
    String situacao = "";
    if (sensor["valor"] > 30) {
      situacao = "ALERTA!!";
    } else {
      situacao = "OK!";
    }

    print("$i° sensor: ");
    print("Nome: ${sensor["nome"]}");
    print("Valor: ${sensor["valor"]}${sensor["unidade"]}");
    print("Situação: $situacao");
    print("---------------------");
    i++;
  }
}
