# your code goes here
class Person
 attr_accessor :bank_account,:happiness,:hygiene
 attr_reader :name
 def initialize (name,bank_account=25,happiness=8,hygiene=8)
    @bank_account=bank_account
    @happiness=happiness
    @hygiene=hygiene
    @name=name
 end
 def name
    @name
 end
 def bank_account=(value)
    @bank_account=value
 end
 def happiness=(happiness)
    if happiness<0
        @happiness=0
    elsif happiness>10
        @happiness=10
    else
        @happiness = happiness
    end
end
 def happiness
    @happiness
 end
 def hygiene=(hygiene)
    if hygiene<0
        @hygiene=0
    elsif hygiene>10
        @hygiene=10
    else
        @hygiene = hygiene
    end
end
 def hygiene
    @hygiene
 end
 def clean?
    if self.hygiene >7
        return true
    else false
    end
 end
 def happy?
    if self.happiness >7
        return true
    else false
    end
 end
 def get_paid(amount)
    self.bank_account=amount+ self.bank_account
    "all about the benjamins"
 end
 def take_bath
    self.hygiene= self.hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
 end
 def work_out
    self.happiness = self.happiness + 2
    self.hygiene=self.hygiene - 3
    "♪ another one bites the dust ♫"
 end
 def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness+=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
 end
 def start_conversation(friend, topic)
    if topic == "politics"
        self.happiness= self.happiness - 2
        friend.happiness= friend.happiness - 2
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness= self.happiness + 1
        friend.happiness= friend.happiness + 1
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end

end
end