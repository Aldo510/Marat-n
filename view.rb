class View

  def welcome
    puts "Bienvenido a Maratòn. Te daremos una pregunta y deberàs adivinar la respuesta correcta. \nListo? Arranca el juego!"
  end

  def answer
    puts "Respuesta: "
    gets.chomp.downcase
  end

  def add_question
    question = []
    puts "What's the question to add"
    ask = gets.chomp
    question << ask
    puts "What's the answer?"
    answer = gets.chomp
    question << answer
  end

  def result(correct, bad)
    puts "Your result is: \ncorrect: #{correct}\nIncorrect: #{bad}"
  end

  def correct
    puts "Correcto!!"
    puts
  end

  def incorrect
    puts "Incorrect :CC"
    puts
  end

end