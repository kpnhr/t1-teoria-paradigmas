// Exemplo 2: escopo, closures e "captura" de valores

func criarContadorPassos() -> () -> Void {
	var passos = 0  // Variável no escopo da função criarContadorPassos

	// Closures são blocos de código. Em outras linguagens, são chamadas de lambdas, 
	// funções anônimas, etc. Funções são um tipo especial de closure.
	let contador = { 
		// A closure captura a variável passos, estendendo seu tempo de vida
		passos += 1
		print("Passos dados: \(passos)")
	}

	return contador
}

let conta = criarContadorPassos()
// O escopo da função acaboo, e em tese a variável "passos" morre junto...
conta()
conta()
conta()
// ... mas ainda podemos modificar o valor de "passos" graças a captura do closure.
