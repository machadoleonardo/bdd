class CadastroProcessoPage < SitePrism::Page
    set_url "/portal"
    
    #Titulo/Subtitulo
    element :titulo, :xpath, "(//*[@class='titulo'])[1]"
    element :subtitulo, ".subtitle"
    
    # Links
    element :link_cadastro_processo, "#itemMenu_64_1_2029"
    
    #inputs
    element :codigo_classe, "#assuntosIsHierarquicoSigla"
    element :descricao_classe, "#assuntosIsHierarquicoDescricao"
    element :marcar_resp, "#checkResp"
    element :interessado, "input[id='entity.principalInteressado.nuIdentFormatado']"
    element :detalhamento, "textarea[id='entity.deComplemento']"

    #botões
    element :buttonProximo, "#botaoSalvar"
    element :buttonAnexos, "input[value=Anexos]"
    element :buttonEncaminhar, "input[value=Encaminhar]"
    element :buttonEtiquetas, "input[value=Etiquetas]"
    element :buttonRequerimentoComprovante, "input[value=Requerimento/Comprovante]"
    element :buttonNovo, "input[value=Novo]"
    element :buttonPino, "#processoPino"
    element :buttonPinoSeta, "processoSeta"

    #Titulo Mensagem
    element :tituloMensagem, ".tituloMensagem"
    element :mensagem, :xpath,  "//*[@id='spwTabelaMensagem']/table/tbody/tr/td/li"
    element :labelOrgao, :xpath, "(//*/strong)[1]"
    element :fieldOrgao, "input[name='orgaosetor.nmOrgaosetor']"
    element :labelProcesso, :xpath, "(//*/strong)[2]"
    element :fieldProcesso, "input[name='numeroProcessoFormatado']"
    element :labelEntrada, :xpath, "(//*/strong)[3]"
    element :fieldEntrada, "input[name='dtEntrada']"
    element :labelHora, :xpath, "(//*/strong)[4]"
    element :fieldHora, "input[name='horaEntradaProcesso']"
    #
end