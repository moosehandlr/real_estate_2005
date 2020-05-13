class House

  attr_reader :price,
              :address,
              :rooms

  def initialize (price, address)
    @price = price
    @address = address
    @rooms = []

  end

  def price
    @price.gsub(/\$/,'').to_i
  end

  def add_room(new_room)
    @rooms << new_room
  end

  def above_market_average?
    if price > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(room_type)
    @room_type = room_type
    @rooms.select do |room|
      room.category == @room_type
    end
  end


end
