class GenerateShape

  def generate_shape(num)
    Array.new(num,"+"*num).join("\n")
  end
end