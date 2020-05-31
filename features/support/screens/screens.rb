class Login
  def initialize
    @login_button_initial = "com.crunchyroll.crmanga:id/login"
    @user = "com.crunchyroll.crmanga:id/email_name"
    @password = "com.crunchyroll.crmanga:id/password"
    @button_login = "com.crunchyroll.crmanga:id/login_signup_text"
    @button_manga = "com.crunchyroll.crmanga:id/main_button_manga"
    @button_create_account = "com.crunchyroll.crmanga:id/create_account"
    @field_email = "com.crunchyroll.crmanga:id/email"
    @confirm_password = "com.crunchyroll.crmanga:id/password2"
    @button_signup = "com.crunchyroll.crmanga:id/login_signup_text"
  end

  def button_initial_login
    find_element(id: @login_button_initial).click
  end

  def login(user, password)
    find_element(id: @user).send_keys(user)
    find_element(id: @password).send_keys(password)
  end

  def button_login
    find_element(id: @button_login).click
  end

  def screen_initial
    find_element(id: @button_manga).displayed?
  end

  def error_message(message)
    find_elements(xpath: "//*[@text='#{message}']").size() > 0 == true
  end

  def create_account
    find_element(id: @button_create_account).click
  end

  def fill_account(user, password)
    find_element(id: @field_email).send_keys(user)
    find_element(id: @password).send_keys(password)
    find_element(id: @confirm_password).send_keys(password)
  end

  def sign_up
    find_element(id: @button_signup).click
  end
end

class Manga
  def initialize
    @icon_find = "com.crunchyroll.crmanga:id/manga_search_toggle"
    @find_manga = "com.crunchyroll.crmanga:id/search_edittext"
    @name_manga_list = "com.crunchyroll.crmanga:id/tvcaption_L"
    @title = "com.crunchyroll.crmanga:id/titleText"
    @button_list = "com.crunchyroll.crmanga:id/button_list"
    @button_grid = "com.crunchyroll.crmanga:id/button_grid"
  end

  def search_icon
    find_element(id: @icon_find).click
  end

  def search_manga(name)
    find_element(id: @find_manga).send_keys(name)
  end

  def access_manga(name)
    if find_elements(id: @name_manga_list, text: "#{name}").size() > 0 == true
      @true_name = find_element(id: @name_manga_list).text
      find_element(id: @name_manga_list, text: "#{@true_name}").click
      find_element(id: @title, text: @true_name).displayed?
    else
      return false
    end
  end

  def select_icon_view(type)
    if type == "lista"
      find_element(id: @button_list).click
    elsif type == "grade"
      find_element(id: @button_grid).click
    end
  end

  def manga_view(view)
    find_element(id: "com.crunchyroll.crmanga:id/#{view}_view").displayed?
  end
end
