module PrimeFactorsKata
  def self.solve value
    aux = value
    factors = []

    while aux > 1 do
      factor = next_prime_factor(aux)
      aux = aux / factor

      factors << factor
    end

    factors
  end

  def self.is_prime? value
    n = value.abs

    return true  if n == 2
    return false if n.modulo(2).zero? || n < 2

    # Use 3 because its the smallest prime number next to 2
    3.step(Math.sqrt(n).to_i, 2) do |x|
      return false if n.modulo(x).zero?
    end

    return true
  end

  def self.next_prime_factor value
    (2..value).detect do |f|
      is_prime?(f) && value.modulo(f) == 0
    end
  end
end