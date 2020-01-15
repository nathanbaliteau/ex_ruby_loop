def signup
  puts "Veuillez définir votre mot de passe :"
  print "> "
  password = gets.chomp
  return password
end

def login (password)
  puts "Veuillez rentrer votre mot de passe pour accéder au contenu confidentiel :"
  print "> "
  input = gets.chomp
  while input != password
    puts "Mot de passe erroné, veuillez réessayer :"
    input = gets.chomp
  end
end

def welcome_screen
  puts "Bienvenue dans la zone secrète ! Voici les informations secrètes : nan je déconne il y avait rien."
end

def perform
  login (signup)
  welcome_screen
end

perform