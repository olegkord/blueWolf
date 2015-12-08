#Given: an array of 1,000,000 integers:
#numbers are from 1-1M

class TestArray


  def find_doop_arbitrary(array)
    #will find a duplicate in an array of integers 1-1M in which EXACTLY ONE pair of integers exists
    #all other integers may occur from 1, & 3 - 999,998 times

    if array.kind_of?(Array) && array.all? {|elem| elem.is_a?(Integer) }
      array.sort!
      counter = 0;

      array.each_with_index do |term, index|

        #march forward in the sorted array
        if (counter == 1) && (term != array[index+1])
          #if the counter is 2 and next term is different, means we have found our pair
          return term
        elsif term != array[index+1]
          #if a new number is found, return counter to 0
          counter = 0
        else
          #if we are marching over the same number, incrememnt count by 1
          counter += 1
        end
      end
    end
    #if no pairs are found, return false:
    return false
  end
end
