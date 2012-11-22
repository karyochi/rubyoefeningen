def pythagoras(b,c)

a = Math.sqrt((b*b) + (c*c)).to_f

l1 = b.to_f*Math.sin(90 * Math::PI / 180)
k1 = c.to_f*Math.sin(90 * Math::PI / 180)

l2 = (Math.asin(l1/a)*180/Math::PI).to_f
k2 = (Math.asin(k1/a)*180/Math::PI).to_f

puts ("")
puts ("De schuine zijde a = " + a.round(2).to_s)
puts ("De rechthoekszijde b = " + b.round(2).to_s)
puts ("De rechthoekszijde c = " + c.round(2).to_s)
puts ("")
puts ("De hoek B = " + l2.round(2).to_s)
puts ("De hoek C = " + k2.round(2).to_s)
puts ("De hoek A(Som van B & C) = " + (l2+k2).round(2).to_s)

end



print("Eerste rechthoekszijde: ")
x = gets.chomp
print("Tweede rechthoekszijde: ")
y = gets.chomp

pythagoras(x.to_i,y.to_i)



