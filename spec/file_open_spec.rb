require './lib/file_opener.rb'

describe FileOpener do
  describe "#open" do
    it "returns the content of the file" do 
      file_opener = FileOpener.new
      expect(file_opener.open(something.txt)).to !eql(true)
    end
  end
end