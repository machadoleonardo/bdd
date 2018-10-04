class CadastroProcessoPage < SitePrism::Page
    set_url "/portal"


    # Links
    element :link_cadastro_processo, "#itemMenu_64_1_2029"

    #inputs
    element :codigo_classe, "#assuntosIsHierarquicoSigla"
    element :descricao_classe, "#assuntosIsHierarquicoDescricao"
    element :marcar_resp, "#checkResp"
    element :interessado, "#entity.principalInteressado.nuIdentFormatado"
    element :detalhamento, "#entity.deComplemento"

    #botão
    element :proximo, "#botaoSalvar"
end