require('./pig_latin');

describe("Pig Latin", function() {

  it("word_beginning_with_a",function() {
    expect(PigLatin.translate("apple")).toEqual("appleay");
  });

  xit("other_word_beginning_e",function() {
    expect(PigLatin.translate("ear")).toEqual("earay");
  });

  xit("word_beginning_with_p",function() {
    expect(PigLatin.translate("pig")).toEqual("igpay");
  });

  xit("word_beginning_with_k",function() {
    expect(PigLatin.translate("koala")).toEqual("oalakay");
  });

  xit("word_beginning_with_ch",function() {
    expect(PigLatin.translate("chair")).toEqual("airchay");
  });

  xit("word_beginning_with_qu",function() {
    expect(PigLatin.translate("queen")).toEqual("eenquay");
  });

  xit("word_with_consonant_preceding_qu",function() {
    expect(PigLatin.translate("square")).toEqual("aresquay");
  });

  xit("word_beginning_with_th",function() {
    expect(PigLatin.translate("therapy")).toEqual("erapythay");
  });

  xit("word_beginning_with_thr",function() {
    expect(PigLatin.translate("thrush")).toEqual("ushthray");
  });

  xit("word_beginning_with_sch",function() {
    expect(PigLatin.translate("school")).toEqual("oolschay");
  });

  xit("translates_phrase",function() {
    expect(PigLatin.translate("quick fast run")).toEqual("ickquay astfay unray");
  });

});
