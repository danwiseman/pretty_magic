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
    expect(PrettyMagic::Icons.card_symbols("{tap}")).to eql("<i class=\"ms ms-tap \"></i>")
    
    expect(PrettyMagic::Icons.card_symbols("{loyalty-up}", loyalty: 3)).to eql("<i class=\"ms ms-loyalty-up ms-loyalty-3 \"></i>")
    
    expect(PrettyMagic::Icons.card_symbols("{loyalty-up}", loyalty: 44)).to eql("<i class=\"ms ms-loyalty-up \"></i>")
    
    expect(PrettyMagic::Icons.card_symbols("{loyalty-down}")).to eql("<i class=\"ms ms-loyalty-down \"></i>")
    
    expect(PrettyMagic::Icons.card_symbols("{saga}", saga_number: 4)).to eql("<i class=\"ms ms-saga ms-saga-4 \"></i>")
    
    expect(PrettyMagic::Icons.card_symbols("{saga}", saga_number: 44)).to eql("<i class=\"ms ms-saga \"></i>")
  end
  
  it "takes an invalid card symbol in curly brackets and outputs the symbol back unchanged" do
    expect(PrettyMagic::Icons.card_symbols("{bill.murray}")).to eql("{bill.murray}")
  end
  
  
  it "takes a Guild and Clan Watermarks symbol in curly brackets and outputs an html <i> tag with the correct classes"
  it "takes an invalid guild and clan symbol in curly brackets and outputs the symbol back unchanged"
  
  it "takes a Poleis symbol in curly brackets and outputs an html <i> tag with the correct classes"
  it "takes an poleis card symbol in curly brackets and outputs the symbol back unchanged"
  
  
end
