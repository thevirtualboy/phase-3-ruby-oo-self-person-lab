# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene 

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def hygiene=(value)
        @hygiene = value.clamp(0, 10)
    end

    def happiness=(value)
        @happiness = value.clamp(0, 10)
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(value)
        @bank_account = @bank_account + value
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene+4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness+2)
        self.hygiene=(@hygiene-3)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness+3)
        friend.happiness=(friend.happiness+3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness=(@happiness-2)
            friend.happiness=(friend.happiness-2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness+1)
            friend.happiness=(friend.happiness+1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end