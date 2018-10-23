cadastro_processo = CadastroProcessoPage.new
constantes_cadastro_processos = ConstantsCadastroProcesso.new
  
  Quando("eu acesso o menu Cadastro de processo") do
    Utils.new.switchFrameMenu(page)
    cadastro_processo.link_cadastro_processo.click
  end
  
  Quando("informo o assunto do processo e avanço para a próxima etapa") do
    page.driver.browser.switch_to.frame 'page'

    cadastro_processo.descricao_classe.set 'Processo de designação de autoridade consular'
    cadastro_processo.codigo_classe.click
    
    while !cadastro_processo.codigo_classe.text == ''
      p cadastro_processo.codigo_classe.text
    end
    cadastro_processo.buttonProximo.click
    
  end
  
  Quando("preencho os dados básicos do cadastro") do
    cadastro_processo.marcar_resp.click
    cadastro_processo.interessado.set '05114568590'
    cadastro_processo.detalhamento.set 'Automação'
    cadastro_processo.buttonProximo.click
  end
  
  Quando("concluo o cadastro do Processo") do
    cadastro_processo.buttonProximo.click
  end
  
  Entao("o sistema exibe a confirmação de sucesso e o número do cadastro de processo") do
    expect(cadastro_processo.titulo.text).to eq(constantes_cadastro_processos.titulo)
    expect(cadastro_processo.tituloMensagem.text).to eq(constantes_cadastro_processos.tituloMensagem)
    expect(cadastro_processo.mensagem.text).to match(constantes_cadastro_processos.mensagem)
    expect(cadastro_processo.subtitulo.text).to eq(constantes_cadastro_processos.subtitulo)
    expect(cadastro_processo.labelOrgao.text).to eq(constantes_cadastro_processos.labelOrgao)
    expect(cadastro_processo.fieldOrgao.value).to eq("SECRETARIA DO MEIO AMBIENTE")
    expect(cadastro_processo.labelProcesso.text).to eq(constantes_cadastro_processos.labelProcesso)
    expect(cadastro_processo.fieldProcesso.value).to match(constantes_cadastro_processos.fieldProcesso)
    expect(cadastro_processo.labelEntrada.text).to eq(constantes_cadastro_processos.labelEntrada)
    expect(cadastro_processo.fieldEntrada.value).to eq(Time.now.strftime("%d/%m/%Y"))
    expect(cadastro_processo.labelHora.text).to eq(constantes_cadastro_processos.labelHora)
    expect(cadastro_processo.fieldHora.value).to eq(Time.now.strftime("%H:%M"))
  end