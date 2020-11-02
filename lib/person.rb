# your code goes here
require 'pry'
class Person
 attr_accessor :bank_account, :balance #,:happiness #:hygiene
 @@people = {}


    def initialize(fullName)
        @name = fullName.capitalize
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @@people[fullName] = self
    end
    def name
        @name
    end
    def happiness
        if @happiness > 10 
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end
    def happiness=(happiness)
        if happiness > 10 
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end
    def hygiene
        if @hygiene > 10 
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end
    end
    def hygiene=(hygiene)
        if hygiene > 10 
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
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
        get_paid = 'all about the benjamins'
    end
    def take_bath
        self.hygiene=(@hygiene += 4)
        take_bath = '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.hygiene=(@hygiene -= 3)
        self.happiness=(@happiness += 2)
        work_out = "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness=(@happiness += 3)
        friend.happiness=(friend.happiness + 3)
        call_friend = "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    def start_conversation(person,topic)
        case topic
        when "politics"
            self.happiness=(@happiness -=2)
            person.happiness=(person.happiness - 2)
            start_conersation = "blah blah partisan blah lobbyist"
        when "weather"
            
            self.happiness=(@happiness +=1)
            person.happiness=(person.happiness + 1)
            start_conersation = "blah blah sun blah rain"
            
        else
            start_conersation = "blah blah blah blah blah"
        end            
    end
    def all_people
        @@people
    end
end

cassy = Person.new("Cassy")
candace = Person.new("Candace")
cassy.call_friend(candace)
# binding.pry

