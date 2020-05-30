require_relative "screens"

class DroidScreens
  attr_accessor :login, :home, :visit

  def initialize
    @login = Login.new
    @home = Home.new
    @visit = Visit.new
  end
end
