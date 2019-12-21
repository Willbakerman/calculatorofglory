#gems t

puts("dicks")

#methods
#while loop, create a condition that when met, keep the loop going, else end the loop. 

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
    puts("This is a juicy number")
    return is_number
end

def abuse_and_exit()
    puts("*************You trying to break me? Not in my house.")
    exit
end

# Ruby program to illustrate 'until' loop 
  
sessionValue = TRUE
  
# using until loop 
# here do is optional 
until sessionValue == FALSE do
  

puts("What is the first number you would like to use?")
aNumber = get_number()
if check_input_is_number(aNumber)
    aNumber = aNumber.to_f
else 
    abuse_and_exit()
end 

puts("What is the second number you would like to use?")

bNumber = get_number()
if check_input_is_number(bNumber)
    bNumber = bNumber.to_f
else 
    abuse_and_exit()
end 

puts("PLEAAASSEE sir, choose a computation to complete \n
    1. #{aNumber} + #{bNumber} \n 
    2. #{aNumber} - #{bNumber} \n
    3. #{aNumber} / #{bNumber} \n
    4. #{aNumber} x #{bNumber} \n") 

userOption = gets.chomp

case userOption 
when "1"
    puts("You have selected option 1")
    answer = aNumber + bNumber 
when "2"
    puts("You have selected option 2")
    answer = aNumber - bNumber 

when "3"
    puts("You have selected option 3")
    answer = aNumber / bNumber 

when "4"
    puts("You have selected option 4")
    answer = aNumber * bNumber 
end 
puts("Your answer is:")
puts(answer)
puts("Would you like to do that again?")

userYesno = get_yes_no()

if userYesno = "yes"
   # sessionValue = TRUE
else sessionValue = FALSE
    puts("you put no")
end 
# here loop ends 
end