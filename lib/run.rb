require_relative 'n_primes'
require_relative 'multiplication_table'

number_of_primes = ARGV[0] || 10
primes = n_primes(number_of_primes)
MultiplicationTable.new(numbers: primes).print