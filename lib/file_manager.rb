class FileManager

  def initialize(file, mode = 'r')
    @file = File.open(file, mode)
    @mode = mode
  end

  def read_content
    @file_data = @file.read
    @file_data
  end

  def print
    puts read_content
  end

  def user_input
    @user_input = gets.chomp
  end

  def write
    if @mode == "w"
      user_input
      @file.write @user_input
    end
  end

  def close
    @file.close
  end
end