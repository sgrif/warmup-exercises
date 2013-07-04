DNA = function(string) {

  this.defaultNucleotideCounts = { A: 0, T: 0, C: 0, G: 0 };
  var counts = this.defaultNucleotideCounts;

  for (var i = 0; i < string.length; i++) {
    var currentChar = string[i];
    counts[currentChar]++;
  };

  this.nucleotideCounts = counts;

  this.count = function(identifier) {
    if ( ! identifier.match(/^[ATCGU]$/) ) { throw "Invalid Nucleotide"; }
    return this.nucleotideCounts[identifier] || 0;
  };

};