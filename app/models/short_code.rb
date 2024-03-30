class ShortCode
  ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  BASE = ALPHABET.length

  def self.encode(integer)
    return ALPHABET[0] if integer == 0
    s = ""
    while integer > 0
      s << ALPHABET[integer.modulo(BASE)]
      integer /= BASE
    end
    s.reverse
  end

  def self.decode(string)
    i = 0
    string.each_char { |c| i = i * BASE + ALPHABET.index(c) }
    i
  end
end
