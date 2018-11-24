# Installation

To install, run:
$ bundle install

To print the table of primes:
$ ruby lib/run.rb N

...where N is the number of primes along each dimension of the table.
For example:
$ ruby lib/run.rb 4


if N is omitted, defaults to 10.

# Tests
$ rspec

# Automatic Testing Installation

https://github.com/guard/guard
bundle exec guard init # Initialises guard
bundle exec guard # Runs guard

https://github.com/guard/guard-rspec
bundle exec guard init rspec # Install rspec plugin for guard

# Primes
https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
https://gist.github.com/loganhasson/8937903