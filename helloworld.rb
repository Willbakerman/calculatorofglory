# gems 
#libaries 
#put this shot in a loop so you can do it over and over again until you say the pass word?
puts('dicks')
# methods
# while loop, create a condition that when met, keep the loop going, else end the loop. 8
def welcome()
  puts("WELCOME - to the Calculator of glory")
end

def ask_for_number(option)
  puts("What is your #{option} number")
  result = gets.chomp
  if check_input_is_number(result)
    result = result.to_f
  else
    abuse_and_exit(option)
  end
  return result
end

def calculate(a_number,b_number)
  puts("What Calculation to use?")
  puts("1 = *")
  puts("2 = /")
  puts("3 = +")
  puts("4 = -") 
  user_option = gets.chomp
  puts("You have selected: #{user_option}")

  answer = nil 
  case user_option
  when '1'
    puts('You have selected option *')
    answer = a_number * b_number
  when '2'
    puts('You have selected option /')
    answer = a_number / b_number
  when '3'
    puts('You have selected option +')
    answer = a_number + b_number
  when '4'
    puts('You have selected option -')
    answer = a_number - b_number
  end
  return answer
end

def show_answer(answer)
  puts("#{answer}")
end 

def check_input_is_number(input)
  is_number = false
  if input =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
    is_number = true
  end
  puts('This is a juicy number')
  return is_number
end

def abuse_and_exit(option)
  puts('*************You trying to break me? Not in my house.')
  ask_for_number(option)
end

def restart(result)
  answer = gets.chomp
  if answer == 'yes' 
    puts("Would you like to use your #{result} in another sum?")
    second_answer = gets.chomp
    if second_answer == 'yes'
      return result 
    else 
      return nil
    end
  else sessionValue = FALSE
    puts("You put no! GOOOOODBYE!")
    exit 
  end
end

welcome()

sessionValue = TRUE 
firstNumber = nil 
secondNumber = nil
result = nil

until sessionValue == FALSE do

  if firstNumber == nil 
    firstNumber = ask_for_number("first")
  end 

   secondNumber = ask_for_number("second")
   result = calculate(firstNumber,secondNumber)

  # result = calculate(ask_for_first_number(), ask_for_second_number())

    puts("Your answer is: #{result}")
  ## puts(answer)
    puts('Would you like to do that again?')
    firstNumber = restart(result)
end 
