#encoding (UTF-8)
values = %w(2 3 4 5 6 7 8 9 10 J Q K A)
suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'] #"♦", "♠", "♥", "♣"

cards = []

values.each do |value|
  suits.each do |suit|
    cards << "#{value} of #{suit[0].downcase}"
  end
end

cards.shuffle!

puts "How many cards do you pick?"
number = STDIN.gets.to_i

number.times do
  puts cards.pop
end
