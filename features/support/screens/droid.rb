require_relative "screens"

class DroidScreens
  attr_accessor :login, :manga

  def initialize
    @login = Login.new
    @manga = Manga.new
  end
end
