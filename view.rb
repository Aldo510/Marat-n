#Class view para mostrar las vistas
class View
  #mostrar msj de bienvenida
  def welcome
    puts "Bienvenido a Maratòn. Te daremos una pregunta y deberàs adivinar la respuesta correcta. \nListo? Arranca el juego!"
  end
  #mostrar mensaje para que el usuario responda la pregunta
  def answer
    puts "Respuesta: "
    gets.chomp.downcase
  end
  #mostrar mensajes para añadir preguntas
  def add_question
    question = []
    puts "What's the question to add"
    ask = gets.chomp
    question << ask
    puts "What's the answer?"
    answer = gets.chomp
    #regresar array con pregunta y respuesta
    question << answer
  end
  #mostrar mensaje para saber cuantas respuestas correctas y incorrectas tiene
  def result(correct, bad)
    puts "Your result is: \ncorrect: #{correct}\nIncorrect: #{bad}"
  end
  #mostrar mensaje de correcto
  def correct
    puts "Correcto!!"
    puts
  end
  #mostrar mensaje de incorrecto
  def incorrect
    puts "Incorrect :CC"
    puts
  end

end