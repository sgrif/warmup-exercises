class Raindrops
  convert: (input) ->
    rainString = ""

    rainString += "Pling" if input % 3 == 0
    rainString += "Plang" if input % 5 == 0
    rainString += "Plong" if input % 7 == 0

    rainString = "" + input if rainString == ""

    rainString

exports.Raindrops = Raindrops