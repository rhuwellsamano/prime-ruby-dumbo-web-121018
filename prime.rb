
def prime?(number)
  if number < 0 or number == 0 or number == 1
    # no negative numbers, zeroes, or 1 can be prime numbers
      return false
    else
      (2..number-1).to_a.all? do |possible_factor|
      number % possible_factor != 0
    end
  end
end

# since 1 can't be included, we search starting from 2
# because that's the next number up.
# we iterate through using .. up until
# number-1, which is the number argument
# that we're checking to see if it's prime..
# which means we can't use the number itself
# when checking to see if it's prime, so we minus 1.
# the .to_a.all? iterates through all
# the numbers (we'll be calling them possible factors)
# in the range of 2 to -whatever the number is minus 1-
# and checks if the number when divided by the
# possible factor DOES NOT have a remainder of zero..
# which means it didn't divide cleanly with the possible factor..
# and when we go through the entire range and no number can
# divide cleanly, then the only numbers mathmatically that
# can prove this part true are 1 and the number itself!
# .. which we've excluded in this interation.
