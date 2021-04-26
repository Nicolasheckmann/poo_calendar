class User
    attr_accessor :email
    attr_accessor :age
    @@all_users_array = []

    def initialize(user_email, user_age)
        @email = user_email
        @age = user_age
        @@all_users_array << self
    end

    def self.all
        @@all_users_array
    end

    def self.find_by_email(email_of_user_to_find)
        @@all_users_array.select { |user| user.email == email_of_user_to_find}[0]
    end

end

julie = User.new('julie@gmail.com', 45)
jean = User.new('jean@gmail.com', 74)
puts "#{User.all}"
puts User.find_by_email('jean@gmail.com')


# binding.pry
puts "end of code"