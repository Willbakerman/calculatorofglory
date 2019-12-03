#gems

puts("dicks")

#methods

def get_number()
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

puts("What is the first number you would like to use?")
aNumber = get_number()
if check_input_is_number(aNumber)
    puts("Nice - this is a digit")
    aNumber = aNumber.to_f
else 
    puts("*************You trying to break me? Shutter Down.")
    exit
end 

puts("What is the second number you would like to use?")

bNumber = get_number()
if bNumber =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
    puts("Nice - this is a digit")
    bNumber = bNumber.to_f
else 
    puts("*************You trying to break me? Not in my house.")
    exit
end 


# "1. " + aNumber.to_s + " + " + bNumber.to_s + "\n" + 
# "2. " + aNumber.to_s + " - " + bNumber.to_s + "\n" +
# "3. " + aNumber.to_s + " / " + bNumber.to_s + "\n" + 
# "4. " + aNumber.to_s + " x " + bNumber.to_s + "\n") 


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

puts(answer)

#Hello

#puts("This is " + aNumber.to_s + " + " + bNumber.to_s + " = " + cNumber.to_s)


puts("And now time for a method yalll")


def output_something(value)
    puts value 
  end


def some_method(value='default', arr=[])
    puts value
    puts arr.length
  end
  
  some_method('Will put something here')


# puts("CODER: so what next, do you ask? Mr cody code head")
# puts("CODER: for my first trick")
# puts("I shall make two numbers do multiply")
# cNumber = 4
# dNumber = 10
# puts(cNumber * dNumber)
# puts("and now a quick switcheroooo")
# puts(cNumber + aNumber)


