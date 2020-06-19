#language:pt

@create_user
Funcionalidade: Cadastro de cliente
    Para que eu possa finalizar uma compra
    Sendo um novo cliente da plataforma
    Posso gerar um pedido

    Cenario: Criar nova conta de cliente
        Dado que estou na página inicial
        Então devo criar um novo usuário
        E devo estar logado com o usuário criado
