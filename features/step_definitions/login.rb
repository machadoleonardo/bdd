login_page = LoginPage.new

Dado("que estou na tela de login") do
    login_page.load
end  

Quando("eu preencher os dados de login") do
    login_page.tipo.set -1
    login_page.empresa.set -1
    login_page.login.set 'softplan'
    login_page.senha.set  1
end

Quando("clico no botao entrar") do
    login_page.botao_entrar.click
end

Entao("visualizo meu nome na aplicacao") do
    expect(login_page).to have_text('Usuário administrador da Softplan'.upcase)
end


Dado("que estou logado no sistema") do
    LoginSupport.new.logar_na_aplicacao(login_page)
end