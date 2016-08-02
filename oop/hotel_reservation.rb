# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method
hotel = HotelReservation.new(customer_name: "bob", date: 7, room_number: 201)

hotel.room_number = 402
puts "# The room number is: "
result = hotel.room_number
puts result

puts 
if result == 402
  puts "pass"
else
  puts "fail" 
end

puts ""
hotel.add_a_fridge
result = hotel.amenities
puts "# The result is " + result[0]

puts

if result[0] == "fridge"
  puts "pass"
else
  puts "fail"
end

puts ""
puts "# For The add a crib method"
hotel.add_a_crib
result = hotel.amenities
puts "the result is " + result[1]
puts ""

 if result[1] == "crib"
  puts "pass"
 else
  puts "fail"
 end

puts ""

puts "# For The add_a_custom_amenity method:"
puts ""
hotel.add_a_custom_amenity("tv")
result = hotel.amenities
puts "the result is " + result[2]

 if result[2] == "tv"
     puts "pass"
 else
    puts "fail"
 end







