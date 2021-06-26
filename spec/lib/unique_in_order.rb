class UniqueInOrder

  def unique(list)
    return list if list == []

    list = list.join('') if list.is_a?(Array)
    previous = ''
    unique_list = []
    list.chars.each do |letter|
      int_check = Integer(letter) rescue nil
      letter = Integer(letter) unless int_check.nil?
      unique_list << letter if letter != previous
      previous = letter
    end
    unique_list
  end
end
