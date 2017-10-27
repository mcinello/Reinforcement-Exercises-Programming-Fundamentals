ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

def tally_results(ballots)
  winners = Hash.new(0)
  ballots.each do |vote|
    vote.each do |place, name|
      if place == 1
         winners[name] += 3
      elsif place == 2
        winners[name] += 2
      elsif place == 3
        winners[name] += 1
      end
    end
  end

  winners = winners.sort_by { |k, v| v }.reverse.to_h

  counter = 0
  winners.each do |name, place|
    puts "#{name} got #{place} votes"
    counter += 1
    if counter == 3
      break
    end
  end
end

tally_results(ballots)
