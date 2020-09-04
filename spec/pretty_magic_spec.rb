require 'pretty_magic'


RSpec.describe PrettyMagic do
  it "has a version number" do
    expect(PrettyMagic::VERSION).not_to be nil
  end
  
  ## Mana Symbols

  it "takes a mana or resource code in curly brackets and outputs an html <i> tag with the correct classes" do
    
    expect(PrettyMagic::ManaIcons.mana_symbols("{U}")).to eql("<i class=\"ms ms-u ms-cost \"></i>")
    expect(PrettyMagic::ManaIcons.mana_symbols("{½}", shadow: true)).to eql("<i class=\"ms ms-1-2 ms-cost ms-shadow \"></i>")
    
    expect(PrettyMagic::ManaIcons.mana_symbols("{2/W}", shadow: true)).to eql("<i class=\"ms ms-2w ms-cost ms-shadow \"></i>")
    expect(PrettyMagic::ManaIcons.mana_symbols("{B/G}", shadow: true)).to eql("<i class=\"ms ms-bg ms-cost ms-shadow \"></i>")
    
  end
  
  it "takes a non valid mana or resource code and returns the code back unchanged" do
    expect(PrettyMagic::ManaIcons.mana_symbols("{notreal}")).to eql("{notreal}")
  end
  
  ## Card Symbols
  
  it "takes a card symbol in curly brackets and outputs an html <i> tag with the correct classes" do
    expect(PrettyMagic::ManaIcons.card_symbols("{tap}")).to eql("<i class=\"ms ms-tap \"></i>")
    
    expect(PrettyMagic::ManaIcons.card_symbols("{loyalty-up}", loyalty: 3)).to eql("<i class=\"ms ms-loyalty-up ms-loyalty-3 \"></i>")
    
    expect(PrettyMagic::ManaIcons.card_symbols("{loyalty-up}", loyalty: 44)).to eql("<i class=\"ms ms-loyalty-up \"></i>")
    
    expect(PrettyMagic::ManaIcons.card_symbols("{loyalty-down}")).to eql("<i class=\"ms ms-loyalty-down \"></i>")
    
    expect(PrettyMagic::ManaIcons.card_symbols("{saga}", saga_number: 4)).to eql("<i class=\"ms ms-saga ms-saga-4 \"></i>")
    
    expect(PrettyMagic::ManaIcons.card_symbols("{saga}", saga_number: 44)).to eql("<i class=\"ms ms-saga \"></i>")
  end
  
  it "takes an invalid card symbol in curly brackets and outputs the symbol back unchanged" do
    expect(PrettyMagic::ManaIcons.card_symbols("{bill.murray}")).to eql("{bill.murray}")
  end
  
  
  it "takes a Guild and Clan Watermarks symbol in curly brackets and outputs an html <i> tag with the correct classes" do
    expect(PrettyMagic::ManaIcons.guild_symbols("{azorius}")).to eql("<i class=\"ms ms-guild-azorius \"></i>")
    expect(PrettyMagic::ManaIcons.guild_symbols("{mardu}")).to eql("<i class=\"ms ms-clan-mardu \"></i>")
    
    
  end
  
  
  it "takes an invalid guild and clan symbol in curly brackets and outputs the symbol back unchanged" do
    expect(PrettyMagic::ManaIcons.guild_symbols("{bill.murray}")).to eql("{bill.murray}")
    
  end
  
  it "takes a Poleis symbol in curly brackets and outputs an html <i> tag with the correct classes" do
    expect(PrettyMagic::ManaIcons.poleis_symbols("{akros}")).to eql("<i class=\"ms ms-polis-akros \"></i>")
    
  end
  
  it "takes an poleis card symbol in curly brackets and outputs the symbol back unchanged" do
    
    expect(PrettyMagic::ManaIcons.poleis_symbols("{bill.murray}")).to eql("{bill.murray}")
    
  end
  
  it "takes long text from a magic card and replaces the codes with the nice i tags from all the categories" do
    
    expect(PrettyMagic::ManaIcons.add_icons_to_text("{T}: Add {C}{C}. Activate this ability only if you control five or more lands.")).to eql(
      "<i class=\"ms ms-tap ms-cost \"></i>: Add <i class=\"ms ms-c ms-cost \"></i><i class=\"ms ms-c ms-cost \"></i>. Activate this ability only if you control five or more lands.")
    
    expect(PrettyMagic::ManaIcons.add_icons_to_text(
        "{X}{B/P}: Remove up to X counters. ({B/P} can be paid with either {B} or 2 life.)")).to eql(
        "<i class=\"ms ms-x ms-cost \"></i><i class=\"ms ms-bp ms-cost \"></i>: Remove up to X counters. (<i class=\"ms ms-bp ms-cost \"></i> can be paid with either <i class=\"ms ms-b ms-cost \"></i> or 2 life.)")
    
    expect(PrettyMagic::ManaIcons.add_icons_to_text("{T}: To activate Bill {bill.murray}")).to eql("<i class=\"ms ms-tap ms-cost \"></i>: To activate Bill {bill.murray}")
    
  end
  
  
end
