def bubble_sort(array)
    sorted_array = array.dup
    
    #array length minus one is max amount of passes needed to bubble sort. To optimize implement continuous itterations until no swaps are performed.
    (array.length-1).times do
        i=0
        #one pass of array
        while i < sorted_array.length - 1 do
            #swap values if first item is larger
            if sorted_array[i] > sorted_array[i + 1]
                sorted_array[i], sorted_array[i + 1] = sorted_array[i + 1], sorted_array[i] 
          
            
        
            end
            i += 1
        end

    end
    return sorted_array
end

p bubble_sort([100,2,4,26,24,37,23,6,2,3,24,25,5])