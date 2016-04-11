#Maraton
require 'csv'

class Asks
  attr_accessor :question, :answer
  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def to_s
    @question
    @answer
  end

end

class Model

  def ask_csv(question, answer)
    CSV.open("Questions.csv", "a+") do |csv| 
      #mete los objetos producto 
      csv << [question, answer]
    end
  end

  def show_asks
    #array para meter las personas
    questions_list = []
     CSV.foreach('Questions.csv') do |row|
      #Mete cada elemento a un array
      questions_list << Asks.new(row[0], row[1])
    end
    #regresar el array lleno
    questions_list
  end

end