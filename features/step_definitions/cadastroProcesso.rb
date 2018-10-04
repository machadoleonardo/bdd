cadastro_processo = CadastroProcessoPage.new
  
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
    cadastro_processo.proximo.click
    
  end
  
  Quando("preencho os dados básicos do cadastro") do
    cadastro_processo.marcar_resp.click
    cadastro_processo.interessado.set '05114568590'
    cadastro_processo.detalhamento.set 'Automação'
    cadastro_processo.proximo.click
  end
  
  Quando("concluo o cadastro do Processo") do
    cadastro_processo.proximo.click
  end
  
  Entao("o sistema exibe a confirmação de sucesso e o número do cadastro de processo") do
    expect(cadastro_processo).to have_text('Processo número')
    expect(cadastro_processo).to have_text('cadastrado com sucesso')
  end