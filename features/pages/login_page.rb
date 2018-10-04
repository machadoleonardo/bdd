class LoginPage < SitePrism::Page
    set_url "/portal"

    element :tipo, '#tipos'
    element :empresa, '#empresas'
    element :login, '#j_username'
    element :senha, '#j_password'
    element :botao_entrar, '#submit'

    element :link_cadastro_processo, "#itemMenu_64_1_2029"
end