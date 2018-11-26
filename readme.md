## A program that prints out a mult1pl1c4t1on t4ble of the f1rst N pr1me num8ers.

A quick code challenge for a London-based Fintech. I have obfuscated some key words to prevent the code being find-able by any other applicants, spoiling the test.

-------

# The Challenge

● The program must run from the command line and print a table to
STDOUT .
● The first row and column of the table should have the N primes, with each cell
containing the product of the primes for the corresponding row and column.
● Allow the user to specify different table sizes through a command line option. If the
option is not used, the table should contain the first 10 primes by default.
● Consider complexity. How fast does your code run? How does it scale?
● Do not use the Prime class from the Ruby stdlib (write your own code).
● Write tests. Try to demonstrate TDD/BDD.
● If you’re using external dependencies please specify those dependencies and how
to install them.

------

# The Solution


## Installation

To install, run:
$ bundle install

To print the multiplaction table of the first N primes:
$ ruby lib/run.rb N

For example: "$ ruby lib/run.rb 4" prints
     2  3  5  7
  2  4  6 10 14
  3  6  9 15 21
  5 10 15 25 35
  7 14 21 35 49

if N is omitted, the script defaults to N=10.

## Running Tests
$ rspec

## Automatic Test Installation

https://github.com/guard/guard
bundle exec guard init # Initialises guard
bundle exec guard # Runs guard in terminal. Runs relevant tests on file save.

https://github.com/guard/guard-rspec
bundle exec guard init rspec # Install rspec plugin for guard

## Primes algorithm
https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
https://gist.github.com/loganhasson/8937903
