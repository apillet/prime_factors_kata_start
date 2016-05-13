require 'spec_helper'

describe PrimeFactorsKata do
  it "should known when a number is prime" do
    # Primes
    expect(PrimeFactorsKata.is_prime?(2)).to be_truthy
    expect(PrimeFactorsKata.is_prime?(3)).to be_truthy
    expect(PrimeFactorsKata.is_prime?(5)).to be_truthy
    expect(PrimeFactorsKata.is_prime?(7)).to be_truthy
    expect(PrimeFactorsKata.is_prime?(23)).to be_truthy

    # Not Primes
    expect(PrimeFactorsKata.is_prime?(8)).to be_falsey
    expect(PrimeFactorsKata.is_prime?(25)).to be_falsey
    expect(PrimeFactorsKata.is_prime?(9)).to be_falsey
  end

  it "should known the next prime factor" do
    expect(PrimeFactorsKata.next_prime_factor(8)).to eq(2)
    expect(PrimeFactorsKata.next_prime_factor(7)).to eq(7)
  end

  it "should return prime factors" do
    expect(PrimeFactorsKata.solve(2)).to eq([2])
    expect(PrimeFactorsKata.solve(3)).to eq([3])
    expect(PrimeFactorsKata.solve(4)).to eq([2, 2])
    expect(PrimeFactorsKata.solve(6)).to eq([2, 3])
    expect(PrimeFactorsKata.solve(8)).to eq([2, 2, 2])
    expect(PrimeFactorsKata.solve(9)).to eq([3, 3])

    expect(PrimeFactorsKata.solve(168)).to eq([2, 2, 2, 3, 7])
  end
end
