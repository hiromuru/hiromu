module SkilsHelper
  
  def lvlv(l)
    case l
    when 5  
      return "five"
    when 4  
      return "four"
    when 3  
      return "three"
    when 2  
      return "two"
    when 1  
      return "one"
    end
  end
end
