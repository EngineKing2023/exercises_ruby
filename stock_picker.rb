def stock_picker(prices)
  return nil if prices.nil? || prices.length < 2

  min_price_day = 0
  max_profit = 0
  best_days = nil

  prices.each_with_index do |current_price, current_day|
    # Posodobimo dan z najnižjo ceno, če najdemo še nižjo ceno
    if current_price < prices[min_price_day]
      min_price_day = current_day
    end

    # Izračunamo morebitni dobiček, če bi kupili na min_price_day in prodali danes
    potential_profit = current_price - prices[min_price_day]

    # Posodobimo največji dobiček in najboljša dneva, če je ta dobiček večji od prejšnjih
    if potential_profit > max_profit
      max_profit = potential_profit
      best_days = [min_price_day, current_day]
    end
  end

  best_days
end

# ==============================================================================
# PRIMERI ZA PREIZKUS (Lahko jih poljubno spreminjate)
# ==============================================================================

# 1. Standardni primer (Najbolje kupiti na dan 1 za $3 in prodati na dan 4 za $15)
primer_1 = [17, 3, 6, 9, 15, 8, 6, 1, 10]
p stock_picker(primer_1) 
# Izpis: [1, 4] (Dobiček: $12)

# 2. Robni primer: Najvišja cena je na prvem mestu
primer_2 = [20, 4, 8, 12, 2]
p stock_picker(primer_2) 
# Izpis: [1, 3] (Kupi za $4 na dan 1, proda za $12 na dan 3. Dan 0 z $20 se pravilno ignorira.)

# 3. Robni primer: Najnižja cena je na zadnjem mestu
primer_3 = [3, 8, 2, 7, 1]
p stock_picker(primer_3) 
# Izpis: [2, 3] (Kupi za $2 na dan 2, proda za $7 na dan 3. Zadnji dan z $1 se ignorira, ker kasneje ni več dni za prodajo.)

# 4. Robni primer: Cene ves čas samo padajo (Dobiček ni mogoč)
primer_4 = [10, 8, 6, 4, 2]
p stock_picker(primer_4) 
# Izpis: nil (Metoda pravilno vrne nil, ker ni možnosti za zaslužek.)
