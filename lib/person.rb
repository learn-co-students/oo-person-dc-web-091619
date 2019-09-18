# your code goes here

require "pry"

class Person 
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene, :salary, :friend

    def initialize(name)
        @hygiene = 8
        @happiness = 8
        @bank_account = 25
        @name = name
    end

    def happiness= (happiness)
        @happiness = happiness
        if happiness > 10
            @happiness = 10
        end
        if happiness < 0
            @happiness = 0
        end
    end

    def hygiene= (hygiene)
        @hygiene = hygiene
        if hygiene > 10
            @hygiene = 10
        end
        if hygiene < 0
            @hygiene = 0
        end
    end

    def clean?
        if @hygiene > 7
            return @hygiene == true
        else 
            return @hygiene == false
        end
    end

    def happy?
        @happiness > 7
    end
    
    def clean?
        @hygiene > 7
    end

    
    def get_paid(salary)
        @bank_account += salary
        if @bank_account > 100
            return 'all about the benjamins'
            end
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
          return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
        end
    end


end