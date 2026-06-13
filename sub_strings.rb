# 1. Definiramo metodo substrings (vaša druga koda s popravkom za downcase)
def substrings(string, dictionary)
  result = {}
  
  dictionary.each do |entry|
    # string.downcase poskrbi, da velike črke ne pokvarijo iskanja
    # entry.downcase poskrbi, da so besede iz slovarja prav tako v malih črkah
    string.downcase.scan(entry.downcase) do
      result[entry] ? result[entry] += 1 : result[entry] = 1
    end
  end
  
  result
end

# 2. Začetni slovenski slovar z 20 besedami
dictionary = [
  "pot", "dom", "voda", "gora", "morje", 
  "pes", "mačka", "avto", "kruh", "mleko", 
  "šola", "knjiga", "dan", "noč", "sonce", 
  "drevo", "mesto", "delo", "igra", "prijatelj"
]

# 3. Uporabniški vnos z uporabo gets.chomp.downcase
puts "Vpišite poljubno besedilo ali stavek v slovenščini:"
user_input = gets.chomp.downcase

# 4. Pokličemo metodo in izpišemo končni rezultat
rezultat = substrings(user_input, dictionary)

puts "\nNajdeni zadetki iz slovenskega slovarja:"
puts rezultat
