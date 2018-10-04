class LoginSupport

    def logout
       
    end

    def logar_na_aplicacao(login_page)

        login_page.load

        #login_page.tipo.set -1
        #login_page.empresa.set -1
        login_page.login.set 'softplan'
        login_page.senha.set  1

        login_page.botao_entrar.click

    end

end