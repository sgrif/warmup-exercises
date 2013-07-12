PigLatin = {
  translate : function(phrase) {
    var words = phrase.split(" ");
    var translatedWords = [];
    for (var i = 0; i < words.length; i++) {
      var currentWord = words[i];
      translatedWords.push(this.translateWord(currentWord));
    }
    return translatedWords.join(" ");
  },
  translateWord: function(word) {
    var match = this.pattern.exec(word);
    var head = match[1];
    var tail = match[2];

    return tail + head + this.suffix;
  },
  pattern: /^([^aeiou]?qu|[^aeiou]*)(.*)/i,
  suffix : "ay"
};