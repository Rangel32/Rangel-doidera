Algoritmo "Projeto doidera"
//Aluno: Vinicius Rangel               CPD:042096
//Professo: ALdo
//Disciplina: LPOO

Var
   opcao,soma,sub,n1, n2, nP, id, idade, contM, contF,numP,pr,i,primo,somaP,d1,d2: inteiro
   numdecimal,b1,b2,b3,b4,b5,b6,b7,b8: inteiro
   divisao,mediaM,mediaF,mediaTM,mediaTF,mediaTT,Total: real
   sexo,base,numbinario: caractere


Inicio
   Limpatela
   Escreval("Escolha uma opção de 1 a 7:")           // Menu com opções de 1 a 7
   Escreval("1.soma")
   Escreval("2.subtração")
   Escreval("3.Divisão")
   Escreval("4.Faixa etária")
   Escreval("5.Números Primos")
   Escreval("6.Troca de Base")
   Escreval("7.sair")
   leia(opcao)                                       //Ler opção digitada pelo usuario
   Limpatela
   enquanto (opcao>7) faca                           //Enquanto a opção digitada for maior que 7 o programa não a aceita pois só as opções de 1 a 7 são validas
      Escreval("Informe um numero de 1 a 7:")
      Escreval("Informe a opção")
      leia(opcao)
   fimenquanto
   enquanto (opcao<7) faca                           //Se a opção for de 1 a 7 ela é valida e faz as operações
      se (opcao=1) entao
         escreval("Informe o primeiro numero")
         leia (n1)
         escreval("Informe o segundo numero")
         leia (n2)
         soma<-n1+n2                                 //Operação de soma onde o usuario digita dois numeros que são somados e o resultado é mostrado em tela
         Escreval("A soma é=", soma)
      senao
         se(opcao=2) entao
            escreval("Informe o primeiro numero")
            leia (n1)
            escreval("Informe o segundo numero")
            leia (n2)
            sub<-n1-n2                               //Operação de subtração onde o usuario digita dois numeros que são subtraidos e o resultado é imprimido em tela
            Escreval("A subtração é=", sub)

         senao
            se(opcao=3) entao                       //Se opção digitada for igual a 3. Programa roda operação de divisão
               escreval("Informe o primeiro numero")
               leia (n1)
               Repita                                //Para que n2 que é o divisor seja diferente de 0 pois seria impossivel calcular. O programa pede o valor de n2 até que seja diferente de 0
                  escreval("Informe o segundo numero")
                  leia (n2)
               ate (n2<>0)
               divisao<-n1/n2                         //Operação de divisão onde o resultado é imprimido na tela
               Escreval("A divisão é=", divisao)
            senao
               se (opcao=4) entao                    //Se opção digitada for igual a 4. Programa faz operação de faixa etária
                  escreval ("Informe quantidade de pessoas")
                  leia (nP)
                  para id de 1 ate nP passo 1 faca
                     escreval("Informe idade")
                     leia (idade)
                     Repita                          //Para que o programa não leia qualquer caractere, ele repete até o usuario digitar um valido
                        escreval("Informe o sexo (m)masculino e (f)feminino")
                        leia (sexo)
                     ate (sexo="m") ou (sexo="f")
                     se (sexo="m") entao            //Operação de media de idade de pessoas do sexo masculino
                        contM<-contM + 1
                        mediaM<-(mediaM+idade)
                        mediaTM<-mediaM/contM
                     senao
                        se (sexo="f") entao        //Operção de media de idade de pessoas do sexo feminino
                           contF<-contF +1
                           mediaF<-(mediaF+idade)
                           mediaTF<- mediaF/contF
                        fimse
                     fimse
                     mediaTT<-mediaF+mediaM       //Operação de media de idade de todas as pessoas independente do sexo
                     Total<-mediaTT/nP
                  fimpara
                  escreval("Media masculina=",mediaTM)
                  escreval("Media feminina=",mediaTF)
                  escreval("Media total de pessoas= ",Total)
                  mediaF<-0                       //Para que o programa não acumule idade das pessoas caso a opção seja executada 2 ou mais vezes, o Programa zera o valor das variaveis
                  mediaM<-0
                  contM<-0
                  contF<-0
                  mediaTF<-0
                  mediaTM<-0
                  mediaTT<-0
               senao
                  se (opcao=5) entao             //Se opção digitada for igual a 5. O programa roda a operação de numeros primos.
                     Escreval("Digite um valor")
                     leia(numP)
                     escreval("Esses são os números primos de 1 até",numP)
                     para primo de 1 ate numP faca          //Validação de se o numero é primo ou não
                        pr<- 0
                        para i de 1 ate primo faca
                           se(primo mod i=0) entao
                              pr<-pr+1
                           fimse
                        fimpara
                        se (pr=2) entao
                           somaP<-somaP+primo               //Soma de todos os primos de 1 até o numero informado pelo usuario
                           escreval(primo)
                        fimse
                     fimpara
                     escreval("A soma de todos os primos é=",somaP)
                     somaP<-0                              //Para que o programa não acumule valor
                  senao
                     se(opcao=6) entao                     //Se opção digitada for igual a 6. O programa roda a operação de troca de base.
                        Repita                             //Programa vai repetir até que seja digitado b para binario e d para decimal
                           Escreval("Escolha (b)binario ou (d)decimal")
                           leia(base)
                        ate (base="b") ou (base="d")
                        se (base="b")  entao
                           Escreval("Digite o seu numero binario de 8 digitos(um digito por linha)")
                           leia (b1)
                           leia (b2)
                           leia (b3)
                           leia (b4)
                           leia (b5)
                           leia (b6)
                           leia (b7)
                           leia (b8)
                           numdecimal<-(b8*1)+(b7*2)+(b6*4)+(b5*8)+(b4*16)+(b3*32)+(b2*64)+(b1*128)        //Operação de troca de base de binario pra decimal
                           Escreval("Seu numero em decimal seria: ",numdecimal)
                        senao
                           se (base="d") entao
                              numbinario<- ""              //Para que seja zerado a variavel de caractere
                              Escreval("Digite o seu numero decimal")
                              leia (d1)
                              d2<-d1
                              enquanto d1> 0 faca
                                 se (d1 mod 2)=0 entao      //Operação de troca de base de decimal para binario. O numero é dividido e se o resto for 0 é atribuido a caractere 0 mais a variavel senao é atribuido 1 mais a variavel, até que o numero seja formado.
                                    numbinario<- "0"+ numbinario
                                 senao
                                    numbinario<- "1"+ numbinario
                                 fimse
                                 d1<-d1 div 2               //Divisão nescessaria na operação de troca de base. Foi usado o comando div pois esta sendo dividido para ter resto
                              fimenquanto
                              Escreval("O numero",d2 ," em binario é:",numbinario)
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
      Escreval("Escolha outra opção:")                   //Menu novamente para que ele se repita apos toda operação até que o usuario digite 7 para sair
      Escreval("1.soma")
      Escreval("2.subtração")
      Escreval("3.Divisão")
      Escreval("4.Faixa etária")
      Escreval("5.Números Primos")
      Escreval("6.Troca de Base")
      Escreval("7.sair")
      leia(opcao)
      enquanto (opcao>7) faca
         Escreval("Informe um numero de 1 a 7:")
         Escreval("Informe a opção")
         leia(opcao)
      fimenquanto
   fimenquanto

Fimalgoritmo