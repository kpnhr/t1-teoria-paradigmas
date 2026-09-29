// Exemplo 3: equivalência híbrida
import Foundation

// Tipos nomeados: o nome do tipo é dado no momento da declaração
struct Ponto {
	var x: Double
	var y: Double
}

struct Cursor {
	var x: Double
	var y: Double
}

let posicaoCursor = Cursor(x: 960.0, y: 540.0)
// Apesar da estrutura ser a mesma, o código abaixo causará um erro de compilação
// O compilador verifica o *nome* do tipo, mesmo se sua estrutura for a mesma
// let pto: Ponto = posicaoCursor


// Tipos compostos: tipos que não possuem nome na definição
// typealias permite que o programador apelide esses tipos, mas isso NÃO os torna nomeados
typealias PosMetro = (x: Double, y: Double)
typealias PosMilha = (x: Double, y: Double)

let posMetro: PosMetro = (x: 120.0, y: 60.0)
// Ao contrário dos tipos nomeados, o compilador avalia a *estrutura* do tipo composto.
// Portanto, podemos realizar essa atribuição:
let posMilha: PosMilha = posMetro

print("Tipo nomeado: \(posicaoCursor)")
print("Tipo composto: posMetro = \(posMetro), posMilha = \(posMilha)")
