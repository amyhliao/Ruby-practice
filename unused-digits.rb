# Instructions:
# Given few numbers, you need to print out the digits that are not being used.

# Example:
# unused_digits(12, 34, 56, 78) # "09"
# unused_digits(2015, 8, 26) # "3479"

# Note:
# Result string should be sorted
# The test case won't pass Integer with leading zero

# Solution:
def unused_digits *integer_array
  remaining_nums = Array(0..9) - integer_array.flatten.join.scan(/\d/).sort.map(&:to_i)
  remaining_nums.join.to_s
end

# Refactored:
def unused_digits(*args)
  (("0".."9").to_a - args.join.chars).join
end

def unused_digits  (*nums)
  "0123456789".delete(*nums.to_s)
end