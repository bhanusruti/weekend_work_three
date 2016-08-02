# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv

  attr_accessor :power, :volume, :channel
  
  def initialize(power, volume, channel)
    @power = power
    @volume = volume
    @channel = channel
  end 
  
  def power
    @power
  end
 
  def volume
    @volume
  end

  def channel
    @channel
  end
end


class Remote

  def intialize(tv)
    @tv = tv
  end

  def toggle_power
    if @tv.power == "ON"
      @tv.power = "OFF"
    elsif @tv.power == "OFF"
      @tv.power = "ON"
    end
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(channel)
    @tv.channel = channel
  end
end

tv = Tv.new("On", 9, 10)
remote = Remote.new(tv)

puts "Testing the toggle_power"
puts

result = remote.toggle_power
puts result

if result == "ON"
  puts "PASS!"
else
  puts "F"
end

puts "Testing the increment_volume"
puts

result = remote.increment_volume
puts result

if result == 10
  puts "PASS!"
else
  puts "F"
end

puts "Testing the decrement_volume"
puts

result = remote.decrement_volume
puts result

if result == 9
  puts "PASS!"
else
  puts "F"
end

puts "Testing the set_channel"
puts

result = remote.set_channel
puts result

if result == 9
  puts "PASS!"
else
  puts "F"
end