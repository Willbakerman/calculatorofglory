# gems t

puts('dicks')

# methods
# while loop, create a condition that when met, keep the loop going, else end the loop. 

def get_number()
  return gets.chomp
end

def get_yes_no()
  return gets.chomp
end

def check_input_is_number(input)
  is_number = false
  if input =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
    is_number = true
  end
  puts('This is a juicy number')
  return is_number
end

def abuse_and_exit()
  puts('*************You trying to break me? Not in my house.')
  exit
end

# Ruby program to illustrate 'until' loop
session_value = TRUE

# using until loop
# here do is optional
until session_value == FALSE

  puts('What is the first number you would like to use?')

  a_number = get_number()

  if check_input_is_number(a_number)
    a_number = a_number.to_f
  else
    abuse_and_exit()
  end

  puts('What is the second number you would like to use?')

  b_number = get_number()
  if check_input_is_number(b_number)
    b_number = b_number.to_f
  else
    abuse_and_exit()
  end

  puts("PLEAAASSEE sir, choose a computation to complete \n
    1. #{a_number} + #{b_number} \n
    2. #{a_number} - #{b_number} \n
    3. #{a_number} / #{b_number} \n
    4. #{a_number} x #{b_number} \n")

  user_option = gets.chomp

  case user_option
  when '1'
    puts('You have selected option 1')
    answer = a_number + b_number
  when '2'
    puts('You have selected option 2')
    answer = a_number - b_number

  when '3'
    puts('You have selected option 3')
    answer = a_number / b_number

  when '4'
    puts('You have selected option 4')
    answer = a_number * b_number
  end

  puts('Your answer is:')
  puts(answer)
  puts('Would you like to do that again?')

  user_yesno = get_yes_no()

  if user_yesno == 'yes'
    session_value = TRUE
  else
    session_value = FALSE
    puts('you put no')
  end
  # here loop ends
end
