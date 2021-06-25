class GenerateHashtag

  def generate_hashtag(phrase)
    phrase = phrase.split(' ')
    phrase.each(&:capitalize!)
    phrase = phrase.join('')
    return false if phrase.length == 0

    phrase = '#' + phrase
    return false if phrase.length > 140

    phrase
  end
end