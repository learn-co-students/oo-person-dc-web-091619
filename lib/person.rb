require "pry"

class Person 
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account 
    
    def initialize(name, bank_account= 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    
    def happiness=(happiness_num)
     if happiness_num > 10
        @happiness = 10
     elsif happiness_num < 0 
        @happiness = 0
     else 
        @happiness = happiness_num
     end
    end

    def hygiene=(hygiene_num)
     if hygiene_num > 10
        @hygiene = 10
     elsif hygiene_num < 0 
        @hygiene = 0
     else 
        @hygiene = hygiene_num
     end
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        @happiness += 2
        self.hygiene=(@hygiene)
        self.happiness=(@happiness)
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        caller_happiness = @happiness + 3
        callee_happiness = friend.happiness + 3 
        
        self.happiness=(caller_happiness)
        friend.happiness=(callee_happiness)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(callee, topic)
        if topic == "politics"
            caller_happiness = @happiness - 2
            callee_happiness = callee.happiness - 2
        
            self.happiness=(caller_happiness)
            callee.happiness=(callee_happiness)
            
            return "blah blah partisan blah lobbyist"
            
        elsif topic == "weather"
            caller_happiness = @happiness + 1
            callee_happiness = callee.happiness + 1
        
            self.happiness=(caller_happiness)
            callee.happiness=(callee_happiness)

            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end
