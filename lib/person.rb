class Person
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account
def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
end

def happiness=(happiness) #setter
    @happiness = happiness

    if @happiness > 10 
        @happiness = 10
    elsif @happiness < 0
        @happiness = 0
    else
        @happiness
    end
end

def hygiene=(hygiene) #setter
    @hygiene = hygiene

    if @hygiene > 10 
        @hygiene = 10
    elsif @hygiene < 0
        @hygiene = 0
    else
        @hygiene
    end
end

def happy?
    if @happiness > 7
        return true
    else 
        return false
    end
end

def clean?
    if @hygiene > 7
        return true
    else 
        return false
    end
end

def get_paid(salary)
    @bank_account = @bank_account + salary
    return "all about the benjamins"
end

def take_bath
    @hygiene = @hygiene + 4
    self.hygiene=(@hygiene)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

    def work_out 
        @happiness = @happiness + 2 
        @hygiene = @hygiene - 3
        self.hygiene=(@hygiene)
        self.happiness=(@happiness)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
     person.happiness = person.happiness + 3
     self.happiness = self.happiness + 3
     return "Hi #{person.name}! It's #{self.name}. How are you?"
end

def  start_conversation(person,topic)
    if topic == "politics"
       person.happiness = person.happiness - 2
        self.happiness = self.happiness - 2
        return "blah blah partisan blah lobbyist"
    end
    
    if topic == "weather"
        person.happiness = person.happiness + 1
        self.happiness = self.happiness + 1
        return  "blah blah sun blah rain"
    end

    if topic != "politics" || "weather"
        return "blah blah blah blah blah"
    end

end

end

