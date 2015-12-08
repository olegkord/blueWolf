class TestString

  def first_no_repeat(string_in)
    #this method will return the first occurence of a non-repeating char in a string

    if string_in.kind_of?(String)

      counter = {}
      str_arr = string_in.split("")
      str_arr.each_with_index do |term, index|
        #march through string and build a hash
        if counter["#{term}"].nil?
          #count the number of occurences
          counter["#{term}"] = {"number" => 1, "first_index" => index}
        else
          counter["#{term}"]["number"] += 1
        end
      end

      counter.each_pair do |key,val|
        if val["number"]==1
          #looping through hash always returns the first occurence of number = 1 first
          return key
        end
      end
    end
    return false
  end
end
