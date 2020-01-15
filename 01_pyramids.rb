def half_pyramid
  puts "Salut, bienvenue dans ma super pyramide. Combien d'étage veux-tu ?"
  print "> "
  nombre_etage = gets.chomp.to_i
  if nombre_etage.between?(1, 25)
    puts "tu as choisi #{nombre_etage} étages alors on  y va :"
    i = 1
    j = nombre_etage - 1
    nombre_etage.times do
      puts " "*j + "#"*i
      i = i + 1
      j = j - 1
    end
  else
    puts "#{nombre_etage} n'a pas le format approprié ! Sélectionne un nombre entier inférieur ou égal à 25."
  end
end

def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide. Combien d'étage veux-tu ?"
  print "> "
  nombre_etage = gets.chomp.to_i
  if nombre_etage.between?(1, 25)
    puts "tu as choisi #{nombre_etage} étages alors on  y va :"
    i = 1
    j = nombre_etage - 1
    nombre_etage.times do
      puts " "*j + "#"*i
      i = i + 2
      j = j - 1
    end
  else
    puts "#{nombre_etage} n'a pas le format approprié ! Sélectionne un nombre entier inférieur ou égal à 25."
  end
end

def wtf_pyramid
  puts "Salut, bienvenue dans ma pyramide du turfu. Combien d'étage veux-tu ? (Saisis un nombre impair)"
  print "> "
  nombre_etage = gets.chomp.to_i
  
  if nombre_etage.between?(1, 25) && nombre_etage.odd?
    puts "tu as choisi #{nombre_etage} étages alors on  y va :"
    i = 1
    j = nombre_etage / 2
    
    while i < nombre_etage
        puts " "*j + "#"*i
        i = i + 2
        j = j - 1
    end
    while i >= 1
        puts " "*j + "#"*i
        i = i - 2
        j = j + 1
    end
  
  else
    puts "Le format n'est pas approprié ! Sélectionne un nombre impair inférieur ou égal à 25."
  end
end

def perform
  half_pyramid
  full_pyramid
  wtf_pyramid
end

perform