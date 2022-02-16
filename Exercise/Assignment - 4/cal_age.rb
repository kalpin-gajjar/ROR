require 'date'
age = ((Date.today() - Date.strptime(readlines[0], "%d-%m-%Y")) / 365).to_i
puts "#{age} Years"

#Type the command ruby cal_age.rb < birthdate.txt > age.txt in the console to get output in age.txt file.