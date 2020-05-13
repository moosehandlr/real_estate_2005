class House

  attr_reader :price,
              :address

  def initialize (price, address)
    @price = price
    @address = address
    @house_rooms = []

  end

  def price
    @price.gsub(/\$/,'').to_i
  end



end
