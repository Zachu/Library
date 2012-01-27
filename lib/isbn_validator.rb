VALID_CHARACTERS = (0..9).to_a + ["x"]

class IsbnValidator

  #Getter + Setter
  #attr_accessor :isbn

  #Getter
  attr_reader :isbn

  #Setter
  #attr_writer :isbn

  def initialize(isbn = "")
    @isbn = cleanup_isbn(isbn.to_s)
  end

  def valid?
    if @isbn.size == 10 || @isbn.size == 13
      #@isbn.chars { |c| return false unless valid_character?(c) }
      @isbn.chars { |c| return false if !valid_character?(c) }
      return true
    else
      false
    end
  end

  #Getter
  #def isbn
  #  @isbn
  #end

  #Setter
  #def isbn=(isbn)
  #  @isbn=isbn
  #end

  private
  #Everything below this is private =) Neat!
  def cleanup_isbn(isbn)
     #isbn.downcase.gsub("-","").gsub(" ","")
     isbn.downcase.gsub(/-| /,"")
  end

  def valid_character?(c)
     if VALID_CHARACTERS.include?(c)
      true
    else
      false
    end
  end

end
