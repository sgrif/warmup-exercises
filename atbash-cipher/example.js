Atbash = function() {
  this.alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  this.key      = this.alphabet.slice(0).reverse();

  this.encode = function(plaintext) {
    var ciphertext = this.encipher(this.normalize(plaintext));
    return this.separate(ciphertext);
  }

  this.encipher = function(plaintext) {
    if (plaintext === "") {
      return "";
    }
    else {
      return this.translate(plaintext.substr(0,1)) + this.encipher(plaintext.substr(1));
    }
  }

  this.normalize = function(str) {
    return str.toLowerCase().replace(/[^a-z0-9]/g, "");
  }

  this.translate = function(char) {
    var idx = this.alphabet.indexOf(char.toLowerCase());

    if (idx > -1) {
      return this.key[idx];
    }
    else {
      return char;
    }
  }

  this.separate = function(str) {
    parts = []
    for (i = 0; i < str.length; i += 5) {
      parts.push(str.substr(i,5));
    }

    return parts.join(" ");
  }

  return this;
}();
