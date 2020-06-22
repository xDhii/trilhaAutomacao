#language:pt

@login
Funcionalidade: Fluxo E2E
    Para que eu possa ter acesso ao ambiente de clientes e efetuar compras
    Sendo um cliente com conta existente na plataforma, devo me logar na plataforma
    Posso me logar na plataforma, adicionar produto ao carrinho, finalizar a compra e gerar um pedido

    @e2e
    Cenario: Criar nova conta de cliente
        Dado que estou na página inicial
        Quando escolho o produto "Didi Sport Watch"
        Então finalizo a compra e gero o pedido
