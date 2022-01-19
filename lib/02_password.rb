def signup
  puts "Enter a password"
  print "> "
  registeredPassword = gets.chomp
  puts "Please, confirm your password"
  print "> "
  registeredPassword_confirmation = gets.chomp

  if registeredPassword == registeredPassword_confirmation
    puts "Thanks for signing up!"
    return registeredPassword
  else
    puts "Passwords do not match"
    exit
  end
end
  
def login
  registeredPassword = signup
  puts "What is your password?"
  print "> "
  loginPassword = gets.chomp
  if loginPassword == registeredPassword
    return true
  else
    puts "Invalid email or password"
    return false
  end
end

def welcome_screen
  verif = login
  if verif == true
  puts "Welcome on NSA"
  puts "\"Aliens are everywhere but... it's a secret!\" "
  puts "- S.A. Uncle Bob"
  else
  puts "You attempted to access restricted area, you're now on our targets list ahaha"
  end
end

welcome_screen