require 'pry'

class Person
  attr_reader :name, :balance, :happiness, :hygiene

@@self = []

  def initialize(name, balance = 25, happiness = 8, hygiene = 8)
    @name = name
    @balance = balance
    # if happiness > 10
    #   @happiness = 10
    # elsif happiness < 0
    #   @happiness = 0
    # else
    #   @happiness = happiness
    # end

    @hygiene = hygiene
    @happiness = happiness
    @@self << self
    # if hygiene > 10
    #   @hygiene = 10
    # elsif hygiene < 0
    #   @hygiene = 0
    # else
    #   @hygiene = happiness
    # end


  end

  def bank_account
    @balance
  end

  def bank_account=(amm)
    @balance += amm
  end

  def happiness
    @happiness
  end

  def happiness=(amm)
      if amm > 10
          @happiness = 10
        elsif amm < 0
          @happiness = 0
        else
          @happiness = amm
        end
  end

   def hygiene=(amm)
        if amm > 10
            @hygiene = 10
          elsif amm < 0
            @hygiene = 0
          else
            @hygiene = amm
          end

      end

def happy?
    @happiness > 7 ? true : false
 end

 def clean?
       @hygiene > 7 ? true : false
 end

def get_paid(money)
  @balance += money
  return "all about the benjamins"
end

def take_bath
      self.hygiene = @hygiene + 4
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene = @hygiene -= 3
    self.happiness = @happiness + 2
    return "♪ another one bites the dust ♫"
end

def call_friend(friend)
    self.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(convo, topic)
 if topic == "politic"
  convo.each do |n|
  self
  puts text
end
  return "blah blah partisan blah lobbyist"
end

end


end
