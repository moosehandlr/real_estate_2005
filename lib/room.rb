class Room

  attr_reader :category,
              :length,
              :width,
              :room_area

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @room_area = length * width.to_i
  end


  # def area
  #   @length * @width.to_i
  # end

  def paint
    true
  end

  # def is_painted?
  #   if paint
  #     false
  #   end
  # end


end
