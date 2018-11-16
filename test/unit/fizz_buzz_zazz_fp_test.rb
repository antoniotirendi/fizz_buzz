require_relative '../test_case'

class FizzBuzzZazzFpTest < Test::Unit::TestCase
  setup do
    range = 1..100
    triggers = [['Fizz', ->(i) { i % 3 == 0 }], ['Buzz', ->(i) { i % 5 == 0 }], ['Zazz', ->(i) { i < 10 }]]
    @fizzbuzz=FizzBuzzZazzFp.new(range, triggers)
  end

  def test_simple_number
    assert_equal '11', sequence_at(11)
  end

  def test_fizz
    assert_equal 'Fizz', sequence_at(12)
  end

  def test_buzz
    assert_equal 'Buzz', sequence_at(10)
  end

  def test_fizz_buzz
    assert_equal 'FizzBuzz', sequence_at(15)
  end

  def test_zazz
    assert_equal 'Zazz', sequence_at(1)
  end

  def test_fizz_zazz
    assert_equal 'FizzZazz', sequence_at(3)
  end

  def test_buzz_zazz
    assert_equal 'BuzzZazz', sequence_at(5)
  end

  def sequence_at(position)
    @fizzbuzz.sequence[position-1]
  end
end
