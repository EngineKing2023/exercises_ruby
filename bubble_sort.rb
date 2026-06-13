def sortiraj_stevilke(polje)
  return polje.sort
end

# --- Koda za izvajanje v terminalu ---

puts "Vpiši številke, ločene s presledkom (npr. 5 2 8 2 1):"
vnos = gets.chomp

# Pretvorimo niz vnosov v polje celih števil (integers)
stevilke = vnos.split.map(&:to_i)

# Pokličemo metodo in izpišemo rezultat
urejene_stevilke = sortiraj_stevilke(stevilke)
puts "Urejene številke: #{urejene_stevilke.join(', ')}"
