require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test

  def test_it_exists
    house = House.new("$400000", "123 sugar lane")

    assert_instance_of House, house
  end

  def test_house_price_and_rooms
    house = House.new("$400000", "123 sugar lane")

    assert_equal 400000, house.price
    assert_equal "123 sugar lane", house.address
  end

  def test_house_rooms_array
    house = House.new("$400000", "123 sugar lane")

    assert_equal [], house.rooms
  end

  def test_house_can_add_rooms
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')

    house = House.new("$400000", "123 sugar lane")


    house.add_room(room_1)
    house.add_room(room_2)

    assert_equal [room_1, room_2], house.rooms
  end


end
