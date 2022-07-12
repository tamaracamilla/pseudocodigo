Algoritmo "Pseudocodigo"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Artur Brant

Procedimento mostrarMenu()
Var
  opcaoEscolhida: inteiro

Inicio
  limpatela()
  escreval("=================")
  escreval("===== Menu ======")
  escreval("=================")

  escreval("Digite 1 cadastrar o cliente")
  escreval("Digite 2 listar os clientes")
  escreval("Digite 3 consultar cliente pelo CPF")
  escreval("Digite 4 recomendação de novo destino")
  escreval("Digite 5 para sair")

  escreva("Opção: ")
  leia(opcaoEscolhida)

  se opcaoEscolhida = 1 entao
    mostrarTelaDeCadastro()
  fimse

  se opcaoEscolhida = 2 entao
    mostrarTelaDeListagem()
  fimse

  se opcaoEscolhida = 3 entao
    mostrarTelaDeConsulta()
  fimse
  
  se opcaoEscolhida = 4 entao
    pesquisarDestino()
  fimse
  
FimProcedimento

Procedimento mostrarTelaDeCadastro()
Var
  nome: caractere
  cpf: caractere
  endereco: caractere
  telefone: inteiro
  cep: caractere
  
  apertouEnter: caractere
Inicio
  limpatela()
  escreval("================================")
  escreval("===== Cadastro de Cliente ======")
  escreval("================================")

  escreva("Digite seu CPF: ")
  leia(cpf)

  escreva("Digite seu nome: ")
  leia(nome)

  escreva("Digite seu endereço completo: ")
  leia(endereco)
  
  escreva("Digite seu número: ")
  leia(telefone)

  escreva("Digite seu CEP: ")
  leia(cep)
  
  nomes[id] <- nome
  cpfs[id] <- cpf
  enderecos[id] <- endereco
  telefones[id] <- telefone
  ceps[id] <- cep


  escreval("Cadastrado com sucesso")
  escreval("O cliente,  ", nomes[id] ,", foi cadastrado com sucesso")


  id <- id + 1
     
     
  escreval("Aperte ENTER para retornar ao Menu Principal")
  leia(apertouEnter)

  mostrarMenu()
FimProcedimento

Procedimento mostrarTelaDeListagem()
Var
  apertouEnter: caractere
  limiteMaximo: inteiro
  i: inteiro
Inicio
  limpatela()
  escreval("================================")
  escreval("====== Lista de Clientes =======")
  escreval("================================")
  limiteMaximo <- id - 1
  Para i de 1 ate limiteMaximo Faca
     escreval("Nome: ", nomes[i])
     escreval("CPF: ", cpfs[i])
     escreval("Endereço: " , enderecos[i])
     escreval("Telefone: " , telefones[i])
     escreval("Cep: ",  ceps[i])
  FimPara

  escreval("Aperte ENTER para retornar ao Menu Principal")
  leia(apertouEnter)
  mostrarMenu()
FimProcedimento

Procedimento mostrarTelaDeConsulta()
Var
  nome: caractere
  cpf: caractere
  apertouEnter: caractere
  idEncontrado: inteiro
Inicio
  limpatela()
  escreval("==========================")
  escreval("===== Busca por CPF ======")
  escreval("==========================")

  escreva("Digite o CPF: ")
  leia(cpf)

  idEncontrado <- buscarPorCpf(cpf)

  se idEncontrado = 0 entao
    escreval("CPF não encontrado")
  senao
    escreval("Nome: ", nomes[idEncontrado])
    escreval("CPF: ", cpfs[idEncontrado])
  fimse

  escreval("Aperte ENTER para retornar ao Menu Principal")
  leia(apertouEnter)

  mostrarMenu()
FimProcedimento

Funcao buscarPorCpf(cpf: caractere): inteiro
Var
  i: inteiro
  idEncontrado: inteiro
Inicio
  idEncontrado <- 0
  Para i de 1 ate id - 1 Faca
     se cpfs[i] = cpf entao
       idEncontrado <- i
     fimse
  FimPara
  retorne idEncontrado
FimFuncao

Procedimento pesquisarDestino()
Var

  opcaoEscolhida: caractere

  nome: caractere
  destino: caractere


inicio

limpatela()
  escreval("==========================")
  escreval("= Cadastre novo Destino =" )
  escreval("==========================")

  
  escreval("Escolha a cidade da sua prefencia: ")
  leia(destino)
  
  escreval("Recomendação cadastrada com sucesso! Obrigada(o) pela prefência.")
  leia (destino)



 // Para i de 1 ate limiteMaximo Faca
  //Se nome = destinos[i] entao

  //EscrevaL ("Nome: ",nomes[i])

  //EscrevaL ("Destino: ",destinos[i])

  //id <- id + 1
  //FimSe
  //FimPara

  //Se i = 0 entao
  //EscrevaL ("Destino não Cadastrado!")

  //FimSe
  //mostrarMenu()

  limpatela()
  
FimProcedimento

// VariÃ¡veis Globais do Programa
Var

id: inteiro
cpfs: vetor [1..10] de caractere
nomes: vetor [1..10] de caractere
enderecos: vetor [1..10] de caractere
telefones: vetor [1..10] de inteiro
ceps: vetor [1..10] de caractere

opcao: inteiro
cpf: caractere

Inicio

id <- 1
mostrarMenu()

Fimalgoritmo









