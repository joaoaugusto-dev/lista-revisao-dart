/*6) Contagem de aprovados
• Criar uma lista de mapas representando alunos:
• nome, nota
• Ler 4 alunos e suas notas.
• Com for-in, contar quantos têm nota >= 6 e exibir os nomes dos aprovados.*/

void main() {
  List<Map<String, dynamic>> alunos = [
    {"nome": "João", "nota": 8.0},
    {"nome": "Marcos", "nota": 5.5},
    {"nome": "Wagner", "nota": 7.5},
    {"nome": "Marcelo", "nota": 9.5},
  ];

  print("Nomes e notas dos alunos:");

  int i = 1;
  for (var aluno in alunos) {
    print("${i}° aluno => Nome: ${aluno["nome"]} -- Nota => ${aluno["nota"]}");
    i++;
  }

  print("--------------------");

  int aprovados = 0;
  List<String> nomeAprovados = [];

  for (var aluno in alunos) {
    if (aluno["nota"] >= 6) {
      aprovados++;
      nomeAprovados.add(aluno["nome"]);
    }
  }

  print("O total de aprovados foi: $aprovados.");
  print("Segue a lista de nome dos alunos aprovados: ");
  for (var nome in nomeAprovados) {
    print("=> $nome");
  }
  print("Parabéns a todos!");
}
