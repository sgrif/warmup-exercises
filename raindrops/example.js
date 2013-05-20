Raindrops = function Raindrops() {};

Raindrops.prototype = {
  convert: function(number) {
    var dropString = "";
    var conversions = this.conversions();

    for(var convert in conversions) {
      var conversionString = conversions[convert];
      if (this.divisibleBy(number,convert)) { dropString += conversionString; }
    }

    if (dropString == "") { dropString += number; }

    return dropString;
  },
  conversions: function() {
    return { 3: "Pling", 5: "Plang", 7: "Plong" };
  },
  divisibleBy: function(number,divisor) {
    return (number % divisor == 0);
  }
}