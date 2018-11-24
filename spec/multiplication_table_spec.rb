require 'multiplication_table'

describe 'get_primes' do

  # Example
  #     2  3  5  7
  #  2  4  6 10 14
  #  3  6  9 15 21
  #  5 10 15 25 35
  #  7 14 21 35 49

  it 'gives box size of 3 when making table for first 4 primes' do
    @table = MultiplicationTable.new(numbers: [2, 3, 5, 7])
    expect(@table.box_size).to eq 3
  end

  it 'gives box size of 4 when making table for first 5 primes' do
    @table = MultiplicationTable.new(numbers: [2, 3, 5, 7, 11])
    expect(@table.box_size).to eq 4
  end

  it 'prints first line of primes correctly' do
    @table = MultiplicationTable.new(numbers: [2, 3, 5, 7])
    expect{ @table.print }.to output(/    2  3  5  7/).to_stdout
  end

  it 'prints second line of primes correctly' do
    @table = MultiplicationTable.new(numbers: [2, 3, 5, 7])
    expect{ @table.print }.to output(/ 2  4  6 10 14/).to_stdout
  end

end