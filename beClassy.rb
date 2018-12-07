class Person
    attr_reader :name
    
    VOTING_AGE = 18
    @@count = 0
    
    def initalize(name)
        @name = name
        @@count += 1
    end


    def self.population
        @@count
    end
end

class Manager < Person
    attr_accessor :computer

    DUE_DATE = ['yesterday', 'today', 'tomorrow', 'EOD', 'cob next Saturday']
   
    def due
        myDueDate = Manager::DUE_DATE.shuffle
        puts "We need that by #{myDueDate.first}"
    end

    def code
        LANGUAGES.shuffle.join(', ')
    end

    def self.population
        "There is this many people... #{super}"
    end
end

def beClassy
    sam = Manager.new()
    sam.due
end
beClassy