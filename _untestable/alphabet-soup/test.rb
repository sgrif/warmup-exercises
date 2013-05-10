require_relative './alphabet_soup'

describe AlphabetSoup do
  it "stops at newline" do
    AlphabetSoup.stub(:gets).and_return "bat", "cat", "\n", "dog"
    expect(AlphabetSoup.words).to eq(%w(bat cat))
  end

  it "alphabetizes" do
    AlphabetSoup.stub(:gets).and_return "dog", "bat", "cat", "\n"
    expect(AlphabetSoup.words).to eq(%w(bat cat dog))
  end
end

