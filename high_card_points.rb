#In the card game bridge, four cards are given point values: Jack: 1, Queen: 2, King: 3, Ace: 4. Given an array of strings corresponding to a hand of cards (the cards are represented like so: ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]), return the total number of high card points for that hand.
E.g., high_card_points(["2","3","4","5","6","7","8","9","10","J","Q","K","A"]) => 10 high_card_points(["2", "A", "A"]) => 8


high_card_points(hand)

  count = 0 
  i = 0
  while i < hand.length
    if hand[i] == "J"
      count = count + 1
    elsif hand[i] == "Q"
    count = count + 2
    elsif hand[i] == "K"
    count = count + 3
    elsif hand[i] == "A"
    count = count + 4
    end
    i = i + 1
  end

  return count

end

high_card_points(["2","3","4","5","6","7","8","9","10","J","Q","K","A"])
high_card_points(["2", "A", "A"])
