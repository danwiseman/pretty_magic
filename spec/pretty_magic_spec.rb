require 'pretty_magic'


RSpec.describe PrettyMagic do
  it "has a version number" do
    expect(PrettyMagic::VERSION).not_to be nil
  end
  
  ## Mana Symbols

  it "takes a mana or resource code in curly brackets and outputs an html <i> tag with the correct classes" do
    
    expect(PrettyMagic::Icons.mana_symbols("{U}")).to eql("<i class=\"ms ms-u ms-cost \"></i>")
    expect(PrettyMagic::Icons.mana_symbols("{½}", shadow: true)).to eql("<i class=\"ms ms-1-2 ms-cost ms-shadow \"></i>")
    
  end
  
  it "takes a non valid mana or resource code and returns the code back unchanged" do
    expect(PrettyMagic::Icons.mana_symbols("{notreal}")).to eql("{notreal}")
  end
  
  ## Card Symbols
  
  it "takes a card symbol in curly brackets and outputs an html <i> tag with the correct classes" do
    expect(PrettyMagic::Icons.card_symbols("{tap}")).to eql("")
  end
  
  it "takes an invalid card symbol in curly brackets and outputs the symbol back unchanged" do
    expect(PrettyMagic::Icons.card_symbols("{bill.murray}")).to eql("{bill.murray}")
  end
  
  
  it "takes a Guild and Clan Watermarks symbol in curly brackets and outputs an html <i> tag with the correct classes"
  it "takes an invalid guild and clan symbol in curly brackets and outputs the symbol back unchanged"
  
  it "takes a Poleis symbol in curly brackets and outputs an html <i> tag with the correct classes"
  it "takes an poleis card symbol in curly brackets and outputs the symbol back unchanged"
  
  
end
