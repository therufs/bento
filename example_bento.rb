ass Bento
  attr_accessor :date, :dish

  def initialize(attributes = {})
    @date = attributes[:date]
    @dish = attributes[:dish]
  end

  def formatted_dish
    "#{@date} -- #{@dish}"
  end
end
