module Challenge
  def find_missing_number(seq, nth = nil)
    array = prepare_seq(seq)

    return 'empty sequence' unless array.any?

    min = array.min
    max = nth.nil? ? array.max : array.max + 1

    all = (min..max).to_a

    missing_numbers = all - array

    return_result(missing_numbers, nth)
  end

  # def find_missing_number(seq, nth = nil)
  #   arr = seq.sort
  #
  #   prev = arr.first - 1
  #
  #   missing_numbers = []
  #
  #   for n in arr
  #     if n != prev + 1
  #       missing_numbers << prev + 1
  #     else
  #       prev = n
  #     end
  #
  #   end
  #
  #   return missing_numbers.first if nth.nil?
  #
  #   missing_numbers[nth]
  # end

  def prepare_seq(seq)
    seq.compact.uniq.reject(&:zero?).reject(&:negative?).sort
  end

  def return_result(missing_numbers, nth)
    return 'no missing numbers' if missing_numbers.empty?

    return missing_numbers.first if nth.nil?

    return "no missing nth: #{nth} number" if nth > missing_numbers.count

    return "invalid nth: #{nth}" unless nth.to_i.positive? # covers 0 and negatives nth

    missing_numbers[nth - 1]
  end
end
