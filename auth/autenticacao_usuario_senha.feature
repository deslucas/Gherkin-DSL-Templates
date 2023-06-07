Funcionalidade: Autenticação de usuário com email e senha
    Como um usuário registrado
    Eu quero fazer login no sistema
    Para acessar as funcionalidades
    Cenario: Preenchimento incorreto do email
        Dado que estou na página de login
        Quando eu preencher meu email com "email_errado.com"
        Então devo ver uma mensagem "Email inválido" a baixo do campo de email
        E devo ver o botão "Entrar" inativo
    Cenario: Preenchimento incorreto da senha
        Dado que estou na página de login
        Quando eu preencher meu email com ""
        Então devo ver a mensagem "Senha não preenchida" a baixo do campo de senha 
        E devo ver o botão "Entrar" inativo
    Cenario: Campos de email e senha preenchidos
        Dado que estou na página de login
        Quando eu preencher meu email com "email@email.com"
        E eu preencher minha senha com "senha123"
        Então devo ver o botão "Entrar" ativo
    Cenario: Tentativa de login
        Dado que esotou na página de login
        Quando eu pressionar o botão "Entrar"
        Então devo ver um "loading"
        E o sistema deve efetuar a autenticação
        Cenario: Login válido
            Dado que estou na página de login
            Quando eu preencher meu email com "email@email.com"
            E eu preencher minha senha com "senha123"
            Então devo ser redirecionado para página inicial
            E devo ver uma mensagem de "bem-vindo"
        Cenario: Tentativa de login inválida
            Dado que estou na página de login
            Quando eu preencher meu email com "emailerrado@email.com"
            E eu preencher minha senha com "senhaerrada"
            Então devo ver uma mensagem de erro "Email ou senha incorretos"