#Decirle a ruby que usara 2 archivos de los cuales agarrara elementos
require_relative 'model'
require_relative 'view'
#class controller
class Controller
  #metodo que inicializa las variables del model y view para que se usen
  def initialize
    @view = View.new
    @model = Model.new
    @view.welcome
    #contadores en 0 que incrementaran
    @counter_correct = 0
    @counter_bad = 0
    #correr el metodo para empezar el juego
    start_game
  end
  #metodo para agregar preguntas
  def question_to_csv(array)
    #mete las preguntas y respuestas a el array
    @model.ask_csv(array[0],array[1])
  end
  #Metodo que recorrera el juego
  def start_game
    #crear variable con los elementos de el csv
    questions = @model.show_asks
    #recorrer el array de preguntas y respuestas
    questions.each do |ask|
      #imprimir la pregunta
      p ask.question
      #guardar lo que el usuario escriba
      res = @view.answer
      #ver si el usuario tiene algo comparado a la respuesta
      if res.include? ask.answer
        #si lo tiene aumenta el contador y muestra mensaje de correcto
        @counter_correct += 1
        @view.correct
      #si no lo contiene
      else 
        #aumenta el contador de errores
        @counter_bad += 1
        #muestra mensaje de error
        @view.incorrect
      end
    end
    #mostrar mensaje de cuantas correctas y cuantas malas tuvo∫
    @view.result(@counter_correct, @counter_bad)
  end

end
#correr el programa con la instancia de controller
Controller.new
