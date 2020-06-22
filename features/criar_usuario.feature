#language:pt


Funcionalidade: Cadastro de cliente
    Para que eu possa ter acesso ao ambiente de clientes e efetuar compras
    Sendo um novo cliente da plataforma
    Posso me logar na plataforma

    @create_user
    Cenario: Criar nova conta de cliente
        Dado que estou na página inicial
        Então devo criar um novo usuário
        E devo estar logado com o usuário criado
