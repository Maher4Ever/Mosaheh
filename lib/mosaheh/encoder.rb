# encoding: UTF-8

class Mosaheh::Encoder
  
  # Initialize the encoder
  def initialize
    # UTF-8 bytes-sequences always begin with one of (0xD8 - 0xDB) for Arabic
    @utf_8_beginning_chars = [*216..219].map(&:chr).join.force_encoding('cp1252')

    # Misencoded sequences can be correctly re-encoded to utf-8, EXCEPT for one
    # charecter with gets replaced with a space (ASCII for it: 32)!
    @problem_char = 32.chr.force_encoding('cp1252')

    # The correct replacement for the problem charecter 
    @correct_char = 160.chr.force_encoding('cp1252')
  end
  
  # Repairs Arabic (U+0600 - U+06FF) data
  # which has been misencoded from cp1252 to UTF-8
  # although the original data was UTF-8 encoded
  #
  # @param [String] misencoded string
  # @return [String] correctly encoded utf-8 string
  def repair(str)
    
    source, dest = str.clone, ""
    ec = Encoding::Converter.new('utf-8', 'cp1252')
    until source.empty?

      if source[0] =~ %r{([\u0600-\u06FF])+}u
        dest += source[0]
        source[0] = ''
        next
      end

      state = ec.primitive_convert(source, dest, nil, nil, Encoding::Converter::AFTER_OUTPUT)

      if state == :undefined_conversion 
        c = ec.last_error.error_char.unpack('C*')[1].chr
        dest += c.force_encoding('cp1252')
      end

      if state == :after_output && dest =~ %r{[#{@utf_8_beginning_chars}]#{@problem_char}$}
        dest.gsub!(/#{@problem_char}$/, @correct_char)
      end
    end

    dest.force_encoding('utf-8')
  end

end
