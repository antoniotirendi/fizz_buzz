require_relative '../test_case'

class FizzBuzzZazzLazyTest < Test::Unit::TestCase
  def test_lets_go
    triggers = [['Fizz', ->(i) { i % 3 == 0 }], ['Buzz', ->(i) { i % 5 == 0 }], ['Zazz', ->(i) { i < 10 }]]
    enumerator=FizzBuzzZazzLazy.new.lets_go(1, triggers)

    loop { puts enumerator.next}
  end
end
