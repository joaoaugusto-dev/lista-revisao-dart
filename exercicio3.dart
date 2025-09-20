/*Ler 4 notas (double) e guardar em uma lista.
• Calcular a média com um laço for-in.
• Exibir a média e uma mensagem usando if:
• >= 6: Aprovado
• < 6: Reprovado*/

import 'dart:io';

void main() {
  List<double> notas = [];

  print(" ---- Calculo de Média ---- ");
  for (int i = 0; i < 4; i++) {
    print("Por favor, digite a ${i + 1}° nota: ");
    notas.add(double.parse(stdin.readLineSync()!));
  }

  double somaNotas = 0;

  for (var notasSoltas in notas) {
    somaNotas = somaNotas + notasSoltas;
  }

  double media = somaNotas / notas.length;

  if (media >= 6) {
    print(
      "Parabéns! Você foi aprovado com uma média de ${media.toStringAsFixed(1)} pontos!",
    );
  } else {
    print(
      "Puxa! Você foi reprovado com uma média de ${media.toStringAsFixed(1)} pontos! Hora de focar mais nos estudos.",
    );
  }
}
