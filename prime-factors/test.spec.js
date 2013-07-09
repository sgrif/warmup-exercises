require('./primeFactors');

describe("Prime Factors", function() {

  it("test 1",function() {
    expect(PrimeFactors.for(1)).toEqual([]);
  });

  it("test 2",function() {
    expect(PrimeFactors.for(2)).toEqual([2]);
  });

  it("test 3",function() {
    expect(PrimeFactors.for(3)).toEqual([3]);
  });

  it("test 4",function() {
    expect(PrimeFactors.for(4)).toEqual([2, 2]);
  });

  it("test 6",function() {
    expect(PrimeFactors.for(6)).toEqual([2, 3]);
  });

  it("test 8",function() {
    expect(PrimeFactors.for(8)).toEqual([2, 2, 2]);
  });

  it("test 9",function() {
    expect(PrimeFactors.for(9)).toEqual([3, 3]);
  });

  it("test 27",function() {
    expect(PrimeFactors.for(27)).toEqual([3, 3, 3]);
  });

  it("test 625",function() {
    expect(PrimeFactors.for(625)).toEqual([5, 5, 5, 5]);
  });

  it("test 901255",function() {
    expect(PrimeFactors.for(901255)).toEqual([5, 17, 23, 461]);
  });

  it("test 93819012551",function() {
    expect(PrimeFactors.for(93819012551)).toEqual([11, 9539, 894119]);
  });

});