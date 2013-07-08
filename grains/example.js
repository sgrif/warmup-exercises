Grains = function() {
  this.square = function(number) {
    return Math.pow(2,number-1);
  };

  this.total = function() {
    var sum = 0;
    for (var i = 1; i <= 64; i++) {
      sum += this.square(i);
    };
    return sum;
  };
};