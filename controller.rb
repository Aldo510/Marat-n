#Decirle a ruby que usara 2 archivos de los cuales agarrara elementos
require_relative 'model'
require_relative 'view'

class Controller

  def initialize
    @view = View.new
    @view.welcome
  end

end

Controller.new
