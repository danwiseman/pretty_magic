require 'pretty_magic'


RSpec.describe PrettyMagic do
  it "has a version number" do
    expect(PrettyMagic::VERSION).not_to be nil
  end

  it "takes a mana or resource code in curly brackets and outputs an html <i> tag with the correct classes" do
    
    expect(PrettyMagic::Icons.mana_symbols("{U}")).to eql("<i class=\"ms ms-u ms-cost \"></i>")
    expect(PrettyMagic::Icons.mana_symbols("{½}", shadow: true)).to eql("<i class=\"ms ms-1-2 ms-cost ms-shadow \"></i>")
    
  end
  
  it "takes a non valid mana or resource code and returns the code back unchanged" do
    expect(PrettyMagic::Icons.mana_symbols("{notreal}")).to eql("{notreal}")
  end
  
  it "takes a card symbol in curly brackets and outputs an html <i> tag with the correct classes"
  
  it "takes a Guild and Clan Watermarks symbol in curly brackets and outputs an html <i> tag with the correct classes"
  
  
  it "takes a Polesis symbol in curly brackets and outputs an html <i> tag with the correct classes"
end
