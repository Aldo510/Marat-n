#Decirle a ruby que usara 2 archivos de los cuales agarrara elementos
require_relative 'model'
require_relative 'view'

class Controller

  def initialize
    @view = View.new
    @model = Model.new
    @view.welcome
    #question_to_csv(@view.add_question)
    @counter_correct = 0
    @counter_bad = 0
    start_game
  end

  def question_to_csv(array)
    @model.ask_csv(array[0],array[1])
  end

  def start_game
    questions = @model.show_asks
    questions.each do |ask|
      p ask.question
      res = @view.answer
      if res.include? ask.answer
        @counter_correct += 1
        @view.correct
      else 
        @counter_bad += 1
        @view.incorrect
      end
    end
    #@counter_bad
    #@counter_correct
    @view.result(@counter_correct, @counter_bad)
  end

end

Controller.new
