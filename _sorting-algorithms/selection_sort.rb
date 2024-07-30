# Visualization: https://arc.net/l/quote/pcksyidt
original_array = [5, 6, 3, 1, 8, 7, 2, 4]

def selection_sort(array)
  n = array.length
  loop_count = 0

  while loop_count < n
    min_index = loop_count

    (loop_count + 1...n).each do |i|
      min_index = i if array[i] < array[min_index]
    end

    array[loop_count], array[min_index] = array[min_index], array[loop_count]

    loop_count += 1

    p "After the #{loop_count} loop: #{array}"
  end

  array
end

p selection_sort(original_array) # => [1, 2, 3, 4, 5, 6, 7, 8]
