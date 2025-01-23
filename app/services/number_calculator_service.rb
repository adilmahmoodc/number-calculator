module NumberCalculatorService
  def self.total_inc_dec(zeros_count)
    return 0 if zeros_count.negative?
    return 1 if zeros_count.zero?

    increasing_count = 0
    decreasing_count = 0

    (1..(10**zeros_count)).each do |num|
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
