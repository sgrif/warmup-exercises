require('./dna');

describe("DNA", function() {

  it("empty dna string has no adenosine", function() {
    var dna = new DNA('');
    expect(dna.count('A')).toEqual(0);
  });

  it("empty dna string has no nucleotides", function() {
    var dna = new DNA('');
    var expectedCounts = {'A' : 0, 'T' : 0, 'C' : 0, 'G' : 0};
    expect(dna.nucleotideCounts).toEqual(expectedCounts);
  });

  it("repetitive cytidine gets counted", function() {
    var dna = new DNA('CCCCC');
    expect(dna.count('C')).toEqual(5);
  });

  it("repetitive sequence has only guanosine", function() {
    var dna = new DNA('GGGGGGGG');
    var expectedCounts = {'A' : 0, 'T' : 0, 'C' : 0, 'G' : 8};
    expect(dna.nucleotideCounts).toEqual(expectedCounts);
  });

  it("counts only thymidine", function() {
    var dna = new DNA('GGGGGTAACCCGG');
    expect(dna.count('T')).toEqual(1);
  });


  it("counts a nucleotide only once", function() {
    var dna = new DNA('CGATTGGG');
    dna.count('T');
    expect(dna.count('T')).toEqual(2);
  });

  it("dna has no uracil", function() {
    var dna = new DNA('GATTACA');
    expect(dna.count('U')).toEqual(0);
  });


  it("validates nucleotides", function() {
    var dna = new DNA('GACT');
    try {
      dna.count('X');
      expect(false).toBeTruthy();
    } catch(e) {
      expect(e).toEqual('Invalid Nucleotide');
    };
  });

  it("counts all nucleotides", function() {
    var dnaString = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";
    var dna = new DNA(dnaString);
    expectedCounts = {'A' : 20, 'T' : 21, 'G' : 17, 'C' : 12};
    expect(dna.nucleotideCounts).toEqual(expectedCounts);
  });

});
