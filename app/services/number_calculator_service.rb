class NumberCalculatorService
  def self.total_inc_dec(x)
    return 0 if x.negative?
    return 1 if x.zero?

    increasing_count = 0
    decreasing_count = 0

    (1..(10**x)).each do |num|
      digits = num.digits
      if digits == digits.sort
        increasing_count += 1
      elsif digits == digits.sort.reverse
        decreasing_count += 1
      end
    end

    increasing_count + decreasing_count
  end
end
