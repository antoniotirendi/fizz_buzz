class FizzBuzz
  attr_accessor :sequence

  def initialize(range, triggers)
    @sequence=range.map do |number|
      value = ''
      triggers.each do |text, divisor|
        value << text if is_divisible_by?(number, divisor)
      end
      value.empty? ? "#{number}" : value
    end
  end

  def is_divisible_by?(numerator, denominator)
    numerator % denominator == 0
  end
end