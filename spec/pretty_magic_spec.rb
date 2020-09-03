require 'pretty_magic'


RSpec.describe PrettyMagic do
  it "has a version number" do
    expect(PrettyMagic::VERSION).not_to be nil
  end

  it "takes a color code in curly brackets and outputs an html <i> tag with the correct classes" do
    expect(PrettyMagic::Icons.mana("{U}")).to eql("<i class=\"ms ms-u ms-cost \"></i>")
  end

end
