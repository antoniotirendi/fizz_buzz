class FizzBuzzZazzLazy
  def lets_go(start, triggers)
    Enumerator.new do |yielder|
      number = start
      loop do
        parts=triggers.select do |_, predicate|
          predicate.call(number)
        end
        num_result = parts.size > 0 ? parts.map(&:first).join : "#{number}"
        yielder.yield(num_result)
        number += 1
      end
    end
  end
end