#Maraton
#requerir el csv para poder crear el archivo con preguntas
require 'csv'
#clase para crear objetos asks
class Asks
  #Dejar acceder a los valores de los objetos asks
  attr_accessor :question, :answer
  def initialize(question, answer)
    @question = question
    @answer = answer
  end
  #pasarlo a string
  def to_s
    @question
    @answer
  end

end
#class model
class Model
  #creacion del csv
  def ask_csv(question, answer)
    #iterar dentro del archivo y agregar
    CSV.open("Questions.csv", "a+") do |csv| 
      #mete los objetos asks con pregunta y respuesta
      csv << [question, answer]
    end
  end
  #Metodo para mostrar las preguntas
  def show_asks
    #array para meter las preguntas y respuestas
    questions_list = []
    #iterrar dentro del archivo donde estan
     CSV.foreach('Questions.csv') do |row|
      #Mete cada elemento a el array
      questions_list << Asks.new(row[0], row[1])
    end
    #regresar el array lleno
    questions_list
  end

end