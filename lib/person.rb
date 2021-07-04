# your code goes here
class Person
    
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happy_level)
        @happiness = happy_level
        if @happiness >= 10 
            @happiness = 10
        elsif @happiness <= 0
            @happiness = 0
        end 
    end

    def hygiene=(clean_level)
        @hygiene = clean_level
        if @hygiene >= 10 
            @hygiene = 10
        elsif @hygiene <= 0
            @hygiene = 0
        end 
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account+=salary
        'all about the benjamins' 
    end

    def take_bath
        # bath_level=@hygiene+4
        self.hygiene=(@hygiene+4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(@hygiene-3)
        self.happiness=(@happiness+2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(name)
        self.happiness=(@happiness+3)
        name.happiness+=3
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

     def start_conversation(person,topic)
        case topic
        when "politics"
            self.happiness=(@happiness-2)
            person.happiness-=2
            return "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness=(@happiness+1)
            person.happiness+=1
            return 'blah blah sun blah rain'
        else
            'blah blah blah blah blah' 
        end
     end

end
