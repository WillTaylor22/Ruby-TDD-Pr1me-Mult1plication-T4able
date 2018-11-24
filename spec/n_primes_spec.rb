require 'n_primes'

describe 'n_primes' do
  it 'returns first 5 primes when n=5' do
    expect(n_primes(5)).to eq [2, 3, 5, 7, 11]
  end

  it 'returns first 10 primes when no number specified' do
    expect(n_primes).to eq [2, 3, 5, 7, 11,
                              13,17,19,23,29]
  end

  it 'translates string inputs to integers' do
    expect(n_primes("5")).to eq [2, 3, 5, 7, 11]
  end
end