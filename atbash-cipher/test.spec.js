require('./atbash');

describe('Atbash', function() {

  it('encodes no', function() {
    var ciphertext = Atbash.encode('no');
    expect(ciphertext).toEqual('ml');
  });

  it('encodes yes', function() {
    var ciphertext = Atbash.encode('yes');
    expect(ciphertext).toEqual('bvh');
  });

  it('encodes OMG', function() {
    var ciphertext = Atbash.encode('OMG');
    expect(ciphertext).toEqual('lnt');
  });

  it('encodes O M G', function() {
    var ciphertext = Atbash.encode('O M G');
    expect(ciphertext).toEqual('lnt');
  });

   it('encodes long words', function() {
     var ciphertext = Atbash.encode('mindblowingly');
     expect(ciphertext).toEqual('nrmwy oldrm tob');
   });

   it('encodes numbers', function() {
     var ciphertext = Atbash.encode('Testing, 1 2 3, testing.');
     expect(ciphertext).toEqual('gvhgr mt123 gvhgr mt');
   });

   it('encodes sentences', function() {
     var ciphertext = Atbash.encode('Truth is fiction.');
     expect(ciphertext).toEqual('gifgs rhurx grlm');
   });

   it('encodes all the things', function() {
     var plaintext  = 'The quick brown fox jumps over the lazy dog.'
     var ciphertext = 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
     expect(ciphertext).toEqual(Atbash.encode(plaintext));
   });
});
