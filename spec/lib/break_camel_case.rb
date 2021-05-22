class BreakCamelCase
  def break_camel_case(word)
    break_word = word.chars.each { |letter| letter == letter.upcase ? letter.prepend(' ') : letter }.join('')
    break_word.slice!(0) if break_word[0] == ' '
    break_word
  end
end
