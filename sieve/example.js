Sieve = function(limit) {

  this.createRangeFromTo = function(from,to) {
    var numbers = [];
    for (var index = from; index <= to; index++) {
      numbers.push(index);
    };
    return numbers;
  };

  this.calculatePrimesToLimit = function(limit) {
    var possiblePrimes = this.createRangeFromTo(2,limit);
    var primes = [];

    while (possiblePrimes.length > 0) {
      var newPrime = possiblePrimes.shift();
      primes.push(newPrime);

      possiblePrimes = possiblePrimes.filter(function(element) {
        return (element % newPrime != 0);
      });
    }

    return primes;
  };

  this.primes = this.calculatePrimesToLimit(limit);
};