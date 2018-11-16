require_relative '../test_case'

class FizzBuzzTest < Test::Unit::TestCase
  setup do
    range = 1..100
    triggers = [['Fizz', 3], ['Buzz', 5]]
    @fizzbuzz=FizzBuzz.new(range, triggers)
  end

  def test_simple_number
    assert_equal '1', sequence_at(1)
  end

  def test_fizz
    assert_equal 'Fizz', sequence_at(3)
    assert_equal 'Fizz', sequence_at(6)
  end

  def test_buzz
    assert_equal 'Buzz', sequence_at(5)
  end

  def test_fizz_buzz
    assert_equal 'FizzBuzz', sequence_at(15)
  end

  private

  def sequence_at(position)
    @fizzbuzz.sequence[position-1]
  end
end