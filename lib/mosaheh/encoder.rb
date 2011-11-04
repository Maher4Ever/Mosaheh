# encoding: UTF-8

class Mosaheh::Encoder
    
  # Initialize the encoder.
  def initialize
  end

  def repair(str)

    source, dest = str.clone, ""
    ec = Encoding::Converter.new('utf-8', 'cp1252')

    utf_beginning_chars = [*216..219].map(&:chr).join.force_encoding('cp1252')
    problem_char = 32.chr.force_encoding('cp1252')
    correct_char = 160.chr.force_encoding('cp1252')

    until source.empty?

      if source[0] =~ %r{([\u0600-\u06FF])+}u
        dest += source[0]
        source[0] = ''
        next
      end

      state = ec.primitive_convert(source, dest, nil, nil, Encoding::Converter::AFTER_OUTPUT)

      if state == :invalid_byte_sequence
        p [dest, *ec.primitive_errinfo]
      end

      if state == :undefined_conversion 
        c = ec.last_error.error_char.unpack('C*')[1].chr
        dest += c.force_encoding('cp1252')
      end

      if state == :after_output && dest =~ /[#{utf_beginning_chars}]#{problem_char}$/
        dest.gsub!(/#{problem_char}$/, correct_char)
      end
    end

    dest.force_encoding('utf-8')
  end

end
