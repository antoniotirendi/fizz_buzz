class FizzBuzzZazz
  attr_accessor :sequence

  def initialize(range, triggers)
    @sequence=range.map do |number|
      value = ''
      triggers.each do |text, block|
        value << text if block.call(number)
      end
      value.empty? ? "#{number}" : value
    end
  end
end