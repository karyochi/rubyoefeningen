def aantalLetters(zin)
  letterTeller = 0

  zin.each_byte do |c|
    if c >= 65 && c <= 90 || c >= 97 && c <= 122
      letterTeller = letterTeller + 1
    end
  end
  puts("Aantal letters = " + letterTeller.to_s)

end

def aantalWoorden(zin)
  woorden = Array.new()
  woorden = zin.split

  puts("Aantal woorden = " + woorden.length.to_s)
end

def omgekeerdeZin(zin)
  woord = ""
  woordLengte = 0
  omgekeerd = ""
  zin = zin.downcase
  omgekeerd = Array.new()
  omgekeerd = zin.split

  arrlengte = omgekeerd.length
  leesteken = ""

  for i in 0..(arrlengte -1)
    woord = omgekeerd[(arrlengte-1)-i].to_s
    woordLengte = woord.length

    if i == 0
      woord = woord.capitalize
    end
    if woord[woordLengte - 1] == "." || woord[woordLengte - 1] == "?" || woord[woordLengte - 1] == "!"
      leesteken = woord[woordLengte - 1]
      woord = woord[0,woordLengte - 1]
    end

    print(woord)
    if i == arrlengte -1
      if leesteken == ""
        print(".")
      else
        print(leesteken)
      end
    else
      print(" ")
    end
  end
  
end

print("Geef een zin in: ")
zin = gets.chomp

aantalLetters(zin)
aantalWoorden(zin)
omgekeerdeZin(zin)




