class CompareArray
  def comp(array1, array2)
    valid = true
    array1.each do |num1|
      if valid == false
        break
      end
      array2.each do |num2|
        any = false
        if num1 * num1 == num2
          any = true
        end
        valid = any
      end
    end
    valid
  end
end
