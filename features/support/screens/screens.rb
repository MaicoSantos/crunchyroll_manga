class Login
  def initialize
    @login_button_initial = "com.crunchyroll.crmanga:id/login"
    @usuario = "com.crunchyroll.crmanga:id/email_name"
    @senha = "com.crunchyroll.crmanga:id/password"
    @button_login = "com.crunchyroll.crmanga:id/login_signup_text"
    @titulo_tela = "com.crunchyroll.crmanga:id/titleText"
  end

  def button_initial_login
    find_element(id: @login_button_initial).click
  end

  def login(user, senha)
    find_element(id: @usuario).send_keys(user)
    find_element(id: @senha).send_keys(senha)
  end

  def button_login
    find_element(id: @button_login).click
  end

  def tela_inicial
    find_element(id: @titulo_tela).displayed?
  end

  def menssagem_erro(mensagem)
    find_element(xpath: "//*[@text='#{mensagem}']").display
  end
end

class Home
  def logado
    @sair.display
    find_element(xpath: "//*[contains(@text, 'Walter')]").display
  end

  def iniciar_visita
    sleep 10
    # find_elements(class: "android.widget.TextView", with: "INICIAR VISITA")[3].click
    find_element(xpath: "//*[contains(@text, 'INICIAR VISITA')]").click
  end
end

class Visit
  def busca_shopping(shopping)
    find_element(xpath: "//*[contains(@text, '#{shopping}')]").click
  end

  def comercializado
    find_element(xpath: "//*[@text='']").click
    # @comercializado.click
    find_element(xpath: "//*[@text='COMERCIALIZADO']").click
  end

  def busca_loja(loja)
    find_element(class: "android.widget.EditText").send_keys(loja)
    find_element(xpath: "//*[contains(@text, '#{loja.upcase}')]").click
  end

  def status_loja(status)
    find_element(xpath: "//*[@text='#{status}']").click
  end

  def localizacao(piso)
    find_element(xpath: "//*[@text='#{piso}']").click
  end

  def adicionar_foto(legenda)
    # @adicionar_foto.click
    # @icone_foto.click
    # @btn_ficou_boa.click
    # @campo_texto.send_keys(legenda)
    # @btn_continuar.click
    find_element(xpath: "//*[@text='Adicionar foto']").click
    sleep 1
    # find_element(xpath: "//*[@text='']").click
    find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup").click

    find_element(xpath: "//*[@text='FICOU BOA']").click
    find_element(class: "android.widget.EditText").send_keys(legenda)
    find_element(xpath: "//*[@text='CONTINUAR']").click

    # @adicionar_observacao = find_element(xpath: "//*[@text='Adicionar observação']")
    # @btn_adicionar = find_element(xpath: "//*[@text='ADICIONAR']")
    # @btn_finalizar = find_element(xpath: "//*[@text='FINALIZAR']")

  end

  def adicionar_observacao(observacao)
    # @adicionar_observacao.click
    # @observacoes.send_keys(observacao)
    # @btn_adicionar.click
    find_element(xpath: "//*[@text='Adicionar observação']").click
    find_element(class: "android.widget.EditText", with: "Observações").send_keys(observacao)
    find_element(xpath: "//*[@text='ADICIONAR']").click
  end

  def finalizar
    # @btn_finalizar.click
    find_element(xpath: "//*[@text='FINALIZAR']").click
  end

  def evento_adicionado_sucesso
    # @opções = find_element(:xpath, "//android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView")

    # el1 = driver.find_elements(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.TextView")
    # el2 = driver.find_elements(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]")

    # @iniciarVisita = find_element(xpath: "//android.widget.TextView*[@text='INICIAR VISITA']")
    # @iniciarVisita = find_element(class: "android.widget.TextView", with: "INICIAR VISITA")
    # find_elements(class: "android.widget.TextView", with: "INICIAR VISITA")[3].click

    # @evento_com_sucesso.display
    # @adicionado_relatorio.display
    # @btn_continuar.click
    # @evento_com_sucesso = find_element(xpath: "//*[@text='Evento registrado com sucesso!']").display
    sleep 10
    # @adicionado_relatorio = find_element(xpath: "//*[@text='ADICIONADO AO RELATÓRIO']").display
    find_element(xpath: "//*[@text='ADICIONADO AO RELATÓRIO']").display
    find_element(xpath: "//*[@text='CONTINUAR']").click
  end
end
