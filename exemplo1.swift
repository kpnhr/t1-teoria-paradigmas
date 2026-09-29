// Exemplo 1: tipagem forte e tipos opcionais
import Foundation

// Toda variável possui um tipo
let curso: String = "Ciência da Computação"

// O compilador pode inferir o tipo da variável dependendo da expressão
var ano = 2025  // Tipo inferido: Int
let pi = 3 + 0.14159  // O valor literal 3 não possui um tipo específico, então o compilador infere que será um Double
// Operações com variáveis de tipos diferentes não é permitida. A linha abaixo irá causar um erro de compilação
//var pi_mais_ano = pi + ano

// Variáveis com valor nulo devem ter tipo Optional
let valor_opcional: Int? = nil

print("Curso de \(curso), ano \(ano)")
print("Pi: \(pi)")
print("Valor opcional: \(valor_opcional)")
