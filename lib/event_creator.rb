class EventCreator

    def self.get_event_title
        puts "Salut, tu veux créer un événement ? Cool !"
        puts "Commençons. Quel est le nom de l'événement ?"
        @title = gets.chomp
        print "> " + @title
        puts
        return @title
    end
    def self.get_event_start_date
        puts "Super. Quand aura-t-il lieu ? (YYYY-DD-MM HH:MM)"
        @start_date = gets.chomp.to_s
        print "> " + @start_date
        puts
        return @start_date
    end
    def self.get_event_duration
        puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
        @duration = gets.chomp
        print "> " + @duration
        puts
        return @duration
    end
    def self.get_event_attendees
        puts "Génial. Qui va participer ? Balance leurs e-mails"
        @attendees = gets.chomp.split
        print "> " + @attendees.join
        puts
        acknowledging_event_creation
        return @attendees
    end
    def self.acknowledging_event_creation
        puts "Super, c'est noté, ton évènement a été créé !"
    end
    def self.create_new_event
        Event.new(get_event_title, get_event_start_date, get_event_duration, get_event_attendees)
    end
end

# EventCreator.create_new_event
