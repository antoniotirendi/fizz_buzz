class FizzBuzzZazzFp
  attr_accessor :sequence

  def initialize(range, triggers)
    @sequence=range.map do |number|
      parts=triggers.select do |_, predicate|
        predicate.call(number)
      end
      parts.size > 0 ? parts.map(&:first).join : "#{number}"
    end
  end
end