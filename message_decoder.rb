
class MessageDecoder
  def initialize(message_file)
    @message_file = message_file
  end

  # decode the message
  def decode
    message_map = message_triangular_numbers
    secret_numbers = message_map.keys

    File.readlines(@message_file, chomp: true).each do |line|
      number = line.split(' ').first.to_i
      word = line.split(' ').last
      if secret_numbers.include? number
        message_map[number] = word
      end
    end

    puts message_map.values.join(' ').strip
  end

  # find the secret numbers corresponding to the message words
  def message_triangular_numbers
    file = File.open(@message_file,"r")
    lines_count = file.readlines.size
    message_map = {}
    nth_triangular_number = 0
    n = 1

    while nth_triangular_number < lines_count
      nth_triangular_number = n * (n+1) / 2
      message_map[nth_triangular_number] = ''
      n += 1
    end
    message_map
  end
end

decoder = MessageDecoder.new("message.txt")
decoder.decode
