class Login
  def initialize
    @login_button_initial = "com.crunchyroll.crmanga:id/login"
    @usuario = "com.crunchyroll.crmanga:id/email_name"
    @senha = "com.crunchyroll.crmanga:id/password"
    @button_login = "com.crunchyroll.crmanga:id/login_signup_text"
    @button_manga = "com.crunchyroll.crmanga:id/main_button_manga"
    @button_create_account = "com.crunchyroll.crmanga:id/create_account"
    @campo_email = "com.crunchyroll.crmanga:id/email"
    @confirmar_senha = "com.crunchyroll.crmanga:id/password2"
    @button_signup = "com.crunchyroll.crmanga:id/login_signup_text"
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
    find_element(id: @button_manga).displayed?
  end

  def menssagem_erro(mensagem)
    find_elements(xpath: "//*[@text='#{mensagem}']").size() > 0 == true
  end

  def create_account
    find_element(id: @button_create_account).click
  end

  def fill_account(user, senha)
    find_element(id: @campo_email).send_keys(user)
    find_element(id: @senha).send_keys(senha)
    find_element(id: @confirmar_senha).send_keys(senha)
  end

  def sign_up
    find_element(id: @button_signup).click
  end
end

class Manga
  def initialize
    @icone_pesquisa = "com.crunchyroll.crmanga:id/manga_search_toggle"
    @Pesquisa_manga = "com.crunchyroll.crmanga:id/search_edittext"
    @nome_manga_lista = "com.crunchyroll.crmanga:id/tvcaption_L"
    @titulo = "com.crunchyroll.crmanga:id/titleText"
    @button_list = "com.crunchyroll.crmanga:id/button_list"
    @button_grid = "com.crunchyroll.crmanga:id/button_grid"
  end

  def search_icon
    find_element(id: @icone_pesquisa).click
  end

  def search_manga(name)
    find_element(id: @Pesquisa_manga).send_keys(name)
  end

  def access_manga(name)
    if find_elements(id: @nome_manga_lista, text: "#{name}").size() > 0 == true
      @nome = find_element(id: @nome_manga_lista).text
      find_element(id: @nome_manga_lista, text: "#{@nome}").click
      find_element(id: @titulo, text: @nome).displayed?
    else
      return false
    end
  end

  def select_icon_view(tipe)
    if tipe == "lista"
      find_element(id: @button_list).click
    elsif tipe == "grade"
      find_element(id: @button_grid).click
    end
  end

  def manga_view(view)
    find_element(id: 'com.crunchyroll.crmanga:id/#{view}_view').displayed?
  end
end
