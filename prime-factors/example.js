PrimeFactors = {
  for: function(number) {
    var factors = [],
        divisor = 2;

    while(number > 1) {
      while (number % divisor == 0) {
        factors.push(divisor);
        number /= divisor;
      }
      divisor++;
    }

    return factors;
  }
};
