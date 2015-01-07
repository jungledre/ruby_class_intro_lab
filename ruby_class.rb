class Superhero

    def initialize first_name, last_name
        @first_name = first_name
        @last_name = last_name
    end

    def superPunch
        return "WHAM!"
    end
end

def superhero
    hero1 = Superhero.new "Adrienne", "Kerr"
    hero2 = Superhero.new "Stephanie", "Nilles"

    p hero1.superPunch
    p hero2
end

# superhero

class Robot

    def initialize name, purpose
        @name = name
        @purpose = purpose
    end

    def greet
        return "beep boop"
    end

end

def robot
    robot1 = Robot.new "QT", "Spread love"
    robot2 = Robot.new "Pesky", "Wreck havoc on earth. DESTRYOYYY!!!!"

    p robot1.greet
    p robot2
end

# robot

class Starship

    def initialize model, ownerName
        @model = model
        @ownerName = ownerName
    end

    def set_top_speed
        puts "Set top speed"
        @top_speed = gets.chomp
    end

    def get_top_speed_method
        puts @model + "'s top speed is " + @top_speed + "GPH (Galaxies Per Second)"
    end

    def accelerate_to
        puts "Accelerate to:"
        entry = gets.chomp
        if entry < @top_speed
            @current_speed = entry
            puts "You are now cruisin at " + @current_speed + "GPH"
        else
            puts "Slow down speedy! That exceeds #{@model}'s top speed."
        end
    end

end

def starship
    starship1 = Starship.new "Blaster", "Adrienne"
    starship1.set_top_speed
    starship1.get_top_speed_method
    starship1.accelerate_to
end

# starship

class Dice

    attr_accessor :roll_array, :roll, :get_rolls

    def initialize number_of_sides
        @number_of_sides = number_of_sides
        @roll_array = []
    end

    def roll
        roll = rand(1..@number_of_sides)
        @roll_array.push(roll)
        roll
    end

    def get_rolls
        @roll_array
    end

end

def dice
    roll1 = Dice.new 6
    5.times do
        puts "You rolled: #{roll1.roll}"
    end
    p roll1.get_rolls
end

dice


