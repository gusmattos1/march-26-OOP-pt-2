class Zombie

  @@horde = []

  @@plague_level = 10

  @@max_speed = 5

  @@max_strength = 8

  @@default_speed = 1

  @@default_strength = 3

  @@id = 1

  def initialize(speed, strength)

    if speed > @@max_speed
      @speed = @@default_speed
    else
      @speed = speed
    end

    if strength > @@max_strength
      @strength = @@default_strength
    else
      @strength = strength
    end
    @id = @@id
    @@id += 1
  end

  def encounter

    if outrun_zombie?
      puts "you escaped inscathed!!!"
    elsif survive_attack?
      puts "You catch the plague and become a zombie o.0"
      @@horde.push(Zombie.new(your_speed, your_strength))

    else
            puts "You just die..."
    end

  end

  def outrun_zombie?
    your_speed = rand(@@max_speed)
    if your_speed > @speed
      return true
    else
      return false
    end
  end

  def survive_attack?
    your_strength = rand(@@max_strength)
    if your_strength > @strength
      return true
    else
      return false
    end
  end

  def self.all?
    @@horde
  end

  def self.new_day
    Zombie.some_die_off
    Zombie.spawn
    Zombie.increase_plague_level
  end

  def self.some_die_off
    killing_number = rand(11)
    killing_number.times do
      @@horde.delete(@@horde.sample)
    end
  end

  def self.spawn
    number = rand(@@plague_level)
      number.times do
      random_speed = rand(@@max_speed)
      random_strength = rand(@@max_strength)
    new_zombie = Zombie.new(random_speed, random_strength)
      @@horde << new_zombie
    end
    return number
  end

  def self.increase_plague_level
    @@plague_level += rand(3)
  end
end
