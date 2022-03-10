@hash_decoding_map = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
  'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
  'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',
  'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '..-', 'W' => '.--', 'X' => '-..-',
  'Y' => '-.--', 'Z' => '--..', '0' => '-----', '1' => '.----', '2' => '..---', '3' => '...--',
  '4' => '....-', '5' => '.....', '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.'
}

def decode_char(cha)
  @hash_decoding_map.each do |key, value|
    return key.to_s if cha == value
  end
end

def decode_word(word)
  word.split.map { |string| decode_char(string) }.join
end

def decode(msg)
  msg.split('   ').map { |word| decode_word(word) }.join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
