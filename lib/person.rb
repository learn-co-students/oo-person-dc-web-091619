class Person

    # made a reader for name because it shouldn't be modified,
    # made a reader for happiness & hygiene because I want customized writer for those two.

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account, :get_paid

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # this was hard one, since happiness and hygiene points should be in 0 to 10,
    # I needed a customized writer for those two.

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else @happiness = happiness
        end
    end
    
    def hygiene=(hygiene)
          if hygiene > 10
              @hygiene = 10
          elsif hygiene < 0
              @hygiene = 0
          else @hygiene = hygiene
          end
    end

    def clean?
        if @hygiene > 7
            return true
        end
        return false  # this line was needed because other than that, it would have returned nil
    end

    def happy?
        if @happiness > 7
            return true
        end
        return false
    end
    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"  # didn't need puts because test asked it to "return" the message
                                   # not print it out
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end


    # it had to be self.happiness += 2, not @happiness += 2 because we have a customized
    # writer for that and that needed to be called with ".happiness="
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(start_person, topic)
        if topic == "politics"
            self.happiness -= 2
            start_person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            start_person.happiness += 1
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end


end
