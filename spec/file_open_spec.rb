require './lib/file_manager.rb'

describe FileManager do
  describe "#read_content" do
    it "returns the content of the file" do 
      file = FileManager.new("./documents/something.txt")
      expect(file.read_content).not_to eql(nil)
    end
  end

  describe "#print" do
    it "to the screen the file content" do
      file = FileManager.new("./documents/something.txt")
      expect{ file.print }.to output.to_stdout
    end
  end

  describe "#write" do
    it "what the user input" do
      file = FileManager.new("./documents/placeholder.txt", "w")
      file.write
      check_file = File.open("./documents/placeholder.txt", "r")
      new_file = FileManager.new("./documents/placeholder.txt", "r")
      expect(check_file.read).to eql(new_file.read_content)
    end

    it "failed cause of wrong mode" do
      file = FileManager.new("./documents/placeholder.txt")
      file.write
      expect(file.read_content).not_to eql("Something")
    end
  end
end