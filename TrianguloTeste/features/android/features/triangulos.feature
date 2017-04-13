#language:pt
Funcionalidade: Identificar o tipo de triângulo de acordo a medida do seus lados

Esquema do Cenário: Identificar o triângulo equilátero
Dado que o aplicativo está carregado
Quando informar o lado "<LADO1>", o lado "<LADO2>", o lado "<LADO3>"
E calcular suas dimensões
Então devo visualizar o nome "<RESULTADO>" como classificação

Exemplos:
| LADO1 | LADO2 | LADO3 | RESULTADO                |
| 2.5   | 2.5   | 2.5   | O triângulo é Equilátero |
| 2.5   | 2.5   | 3.0   | O triângulo é Isósceles  |
| 2.5   | 1.5   | 4.5   | O triângulo é Escaleno   |
