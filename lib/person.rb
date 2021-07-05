require 'pry'

class Person
    attr_reader :name

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @total = 25
    end 

    def bank_account 
        @total
    end 

    def bank_account=(amount)
        @total += amount 
    end 
    
    def happiness
        @happiness
    end 

    def happiness=(points)
        if points >10
            @happiness = 10
        elsif points < 0
            @happiness = 0
        else @happiness = points
        end
    end 

    def hygiene
        @hygiene
    end 

    def hygiene=(points)
        if points >10
            @hygiene = 10
        elsif points < 0
            @hygiene = 0
        else @hygiene = points
        end
    end 

    def clean?
       if @hygiene > 7
        return true
       else return false
       end
    end

    def happy?
        if @happiness > 7
            return true
           else return false
           end
    end

    def get_paid(amount)
        @total += amount
        return 'all about the benjamins'
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)
        @happiness += 2
        self.happiness=(@happiness)
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(person)
        @happiness += 3
        self.happiness = @happiness
        person.happiness += 3
        return "Hi #{person.name}! It's #{@name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            @happiness -= 2
            self.happiness = @happiness
            person.happiness -= 2
            return 'blah blah partisan blah lobbyist'

        elsif topic == "weather"
            @happiness += 1
            self.happiness = @happiness
            person.happiness += 1
            return 'blah blah sun blah rain'
        
        else return 'blah blah blah blah blah'
        end 
    
    end

end 

