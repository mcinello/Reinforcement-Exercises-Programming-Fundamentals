emotions = {
  happiness: [1, 2, 3],
  stress: [1, 2, 3],
  fear: [1, 2, 3]
}


class Person

  def initialize(name, emotions)
    @name = name
    @emotions = emotions
  end

  def name
    @name
  end

  def emotions
    @emotions
  end

  def the_feels
    emotions.each do |feeling, rate|
      if rate.sample == 3
        puts "I am feeling a high of #{feeling}"
      elsif rate.sample == 2
        puts "I am feeling a medium of #{feeling}"
      elsif rate.sample == 1
        puts "I am feeling a low amount of #{feeling}"
      end
    end
  end

end

michelle =  Person.new('Michelle', emotions)

michelle.the_feels
