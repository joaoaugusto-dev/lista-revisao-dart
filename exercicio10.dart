/*10) Relatório final
• Usar a lista de sensores do exercício 9.
• Percorrer com for-in e exibir no formato:

Sensor: Temperatura | Valor: 28.5 °C | Status: ALERTA*/

void main() {
  List<Map<String, dynamic>> sensores = [
    {"nome": "DHT22-SALA", "valor": 33.1, "unidade": "°C"},
    {"nome": "DHT22-QUARTO", "valor": 22.8, "unidade": "°C"},
    {"nome": "DHT22-COZINHA", "valor": 31.0, "unidade": "°C"},
    {"nome": "DHT22-BANHEIRO", "valor": 23.5, "unidade": "°C"},
    {"nome": "DHT22-GARAGEM", "valor": 35.9, "unidade": "°C"},
    {"nome": "DHT22-ESCRITORIO", "valor": 32.3, "unidade": "°C"},
    {"nome": "DHT22-LAVANDERIA", "valor": 23.7, "unidade": "°C"},
    {"nome": "DHT22-SACADA", "valor": 30.2, "unidade": "°C"},
    {"nome": "DHT22-HALL", "valor": 22.6, "unidade": "°C"},
    {"nome": "DHT22-DESPENSA", "valor": 31.5, "unidade": "°C"},
  ];

  int i = 1;
  for (var sensor in sensores) {
    String situacao = "";
    if (sensor["valor"] > 30) {
      situacao = "ALERTA!!";
    } else {
      situacao = "OK!";
    }

    print(
      "$i° sensor => Sensor: ${sensor["nome"]} | Valor: ${sensor["valor"]} ${sensor["unidade"]} | Status: $situacao",
    );
    i++;
  }
}
