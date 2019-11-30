puts("dicks")

puts("What is the first number you would like to use?")
aNumber = gets.chomp
if aNumber !~ /\D/
    puts("Nice - this is a digit")
    aNumber = aNumber.to_i 
else 
    puts("*************You trying to break me?")
    exit
end 

puts("What is the second number you would like to use?")

bNumber = gets.chomp
if bNumber !~ /\D/
    puts("Nice - this is a digit")
    bNumber = bNumber.to_i 
else 
    puts("*************You trying to break me?")
    exit
end 


puts("PLEAAASSEE sir, choose a computation to complete \n" +
    "1. " + aNumber.to_s + " + " + bNumber.to_s + "\n" + 
    "2. " + aNumber.to_s + " - " + bNumber.to_s + "\n" +
    "3. " + aNumber.to_s + " / " + bNumber.to_s + "\n" + 
    "4. " + aNumber.to_s + " x " + bNumber.to_s + "\n") 

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

exit



#Hello



puts("This is " + aNumber.to_s + " + " + bNumber.to_s + " = " + cNumber.to_s)


# puts("CODER: so what next, do you ask? Mr cody code head")
# puts("CODER: for my first trick")
# puts("I shall make two numbers do multiply")
# cNumber = 4
# dNumber = 10
# puts(cNumber * dNumber)
# puts("and now a quick switcheroooo")
# puts(cNumber + aNumber)


