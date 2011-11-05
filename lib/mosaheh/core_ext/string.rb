# encoding: utf-8
class String

  # Removes the first charecter from the String
  # and returns it back
  #
  # @example
  #   str = 'abc'
  #   str.shift! # => 'a'
  #   p str      # => 'bc'
  # @return [String] The removed first charecter
  def shift!
    char = self[0]
    self[0] = ''
    char
  end
end
