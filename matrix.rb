def bereken(matrixString)

  matrixStringLengte = matrixString.length
  matrixArray = Array.new(4) {Array.new(4)}
  character = ""
  lengteTeller = 0
  getal = 0
  positie = 0

  for i in 1..3
    for y in 1..3
      begin
	positie = getal.to_i + lengteTeller.to_i

	if positie < matrixStringLengte
	  character = matrixString[positie].to_s

          if character != " "
	    matrixArray[i][y] = matrixArray[i][y].to_s + character.to_s
          end

  	  lengteTeller = lengteTeller + 1
        else
          character = " "
        end
      end while character != " "

      getal = getal + 1
      lengteTeller = lengteTeller - 1
      matrixArray[i][y] = matrixArray[i][y].to_i

    end
  end

  puts("")
  puts("Ingegeven matrix: ")
  for i in 1..3
    for y in 1..3
      print(matrixArray[i][y].to_s + " ")
    end
    print("\n")
  end
  puts("")
  determinant = (matrixArray[1][1] * matrixArray[2][2] * matrixArray[3][3]) + (matrixArray[1][2] * matrixArray[2][3] * matrixArray[3][1]) + (matrixArray[1][3] * matrixArray[2][1] * matrixArray[3][2]) - (matrixArray[1][3] * matrixArray[2][2] * matrixArray[3][1]) - (matrixArray[1][2] * matrixArray[2][1] * matrixArray[3][3]) - (matrixArray[1][1] * matrixArray[2][3] * matrixArray[3][2])
  puts("De determinant = " + determinant.to_s)
  puts("")
  puts("Getransponeerde matrix :")

  for i in 1..3
    for y in 1..3
      print(matrixArray[y][i].to_s + " ")
    end
    print("\n")
  end

end

puts("Geef een 3x3 matrix (9 nummers gescheiden door een spatie): ")
matrixString = gets.chomp

bereken(matrixString)




