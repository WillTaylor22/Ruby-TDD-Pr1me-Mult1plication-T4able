## Summary

# On review, a prime sieve is the most efficient algorithm for generating primes
# Ruby-based prime seive algorithm partly borrowed from here
# https://gist.github.com/loganhasson/8937903


def n_primes(number=10)
  # Highest number to check if prime for the calculation.
  # The max can be increased if needed.
  # max = 100,000 gives you 9592 primes in about a second 
  max = 100

  # Set up an array with all the numbers from 0 to the max
  primes = (0..max).to_a

  # Set both the first and second positions (i.e., 0 and 1) to nil, as they
  # aren't prime.
  primes[0] = primes[1] = nil
  
  # Iterate through primes array
  primes.each do |p|
    # Skip if nil
    next unless p

    # Break if we are past the square root of the max value 
    break if p*p > max
    # Start at the square of the current number, and step through.
    # Go up to the max value, by multiples of the current number, and replace
    # that value with nil in the primes array
    (p*p).step(max,p) { |m| primes[m] = nil }
  end

  primes.compact[0..number.to_i-1]
end