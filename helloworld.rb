# gems 
#libaries 
#put this shot in a loop so you can do it over and over again until you say the pass word?
puts('dicks')
# methods
# while loop, create a condition that when met, keep the loop going, else end the loop. 8
def welcome()
  puts("WELCOME - to the Calculator of glory")
end

def ask_for_number(first_or_second_input)
  puts("What is your #{first_or_second_input} number")
  result = gets.chomp
  if check_input_is_number(result)
    result = result.to_f
  else
    abuse_and_exit(first_or_second_input)
  end
  return result 
end

def calculate(a_number,b_number)
  puts("What Calculation to use? [1,2,3,4] \n1 = *\n2 = /\n3 = +\n4 = -\n")
  user_option = gets.chomp

  puts("You have selected: #{user_option}")

  calculation = nil 
  case user_option
  when '1'
    puts('You have selected option *')
    calculation = a_number * b_number
    puts("We are going to do: #{a_number} * #{b_number}")
  when '2'
    puts('You have selected option /')
    calculation = a_number / b_number
    puts("This is the maths we gonna do: #{a_number} / #{b_number}")
  when '3'
    puts('You have selected option +')
    calculation = a_number + b_number
    puts("These numbers will magically do the following: #{a_number} + #{b_number}")
  when '4'
    puts('You have selected option -')
    calculation = a_number - b_number
    puts("Are you sure you want to do this calculation: #{a_number} - #{b_number}")
  end
  return calculation 
end

def check_input_is_number(input)
  is_number = false
  if input =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
    is_number = true
  end
  puts('This is a juicy number')
  return is_number
end

def abuse_and_exit(first_or_second_input)
  puts('*************You trying to break me? Not in my house.')
  ask_for_number(first_or_second_input)
end

def restart(calculation)
  answer = gets.chomp
  if answer == 'yes' 
    puts("Would you like to use your #{calculation} in another sum? [yes/no/maybe]")
    second_answer = gets.chomp
    if second_answer == 'yes'
      return calculation 
    elsif second_answer == 'maybe'
      puts("You have been assigned : #{rand}")
      return rand
    else second_answer == 'no'
      sessionValue = FALSE
      puts("You put no! GOOOOODBYE! (session is now false)")
      #exit 
    end
  end
end
welcome()

sessionValue = TRUE 
firstNumber = nil 
secondNumber = nil
calculation = nil

until sessionValue == FALSE do

  if firstNumber == nil 
    firstNumber = ask_for_number("first")
  end 

   secondNumber = ask_for_number("second")
   calculation = calculate(firstNumber,secondNumber)

  # result = calculate(ask_for_first_number(), ask_for_second_number())

    puts("Your answer is: #{calculation}")
  ## puts(answer)
    puts('Would continue on your journey? [yes/no]')
    firstNumber = restart(calculation)
end 
