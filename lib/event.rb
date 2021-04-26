class Event
    attr_accessor :start_date
    attr_accessor :duration
    attr_accessor :title
    attr_accessor :attendees

    def initialize(event_title, start_date_to_time, event_duration_in_minutes, attendees_email_array)
        @title = event_title
        @start_date = Time.parse(start_date_to_time)
        @duration = event_duration_in_minutes.to_i
        @attendees = attendees_email_array
        self.info
    end

    def postpone_24h
        @start_date += (3600 * 24)
    end

    def end_date
        @start_date + @duration * 60
    end

    def is_past?
        @start_date < Time.now
    end

    def is_futur?
        @start_date > Time.now
    end
        
    def is_soon?
        is_futur? && @start_date < Time.now + (30 * 60)
    end

    def info
        puts "> Titre : " + self.title.to_s
        puts "> Date de début : " + self.start_date.strftime("%F %H:%M").to_s
        puts "> Durée : " + self.duration.to_s + " minutes"
        print "> Invités : "
        puts self.attendees.join(", ")
    end
end 

# fete = Event.new("2021-04-26 17:00", 30, "sport", ["truc@machiin.com", "bidule@hello.org"])
# fete.to_s
# binding.pry