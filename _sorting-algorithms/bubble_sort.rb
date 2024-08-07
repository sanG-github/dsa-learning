# Visualization: https://arc.net/l/quote/pjafjfrg
original_array = [5, 6, 3, 1, 8, 7, 2, 4]

def bubble_sort(array)
  n = array.length
  loop_count = 0

  while loop_count < n || !swapped
    swapped = false
    loop_count += 1

    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    p "After the #{loop_count} loop: #{array}"

    # If no two elements were swapped in the inner loop, then the array is sorted
    break unless swapped
  end

  array
end

p bubble_sort(original_array) # => [1, 2, 3, 4, 5, 6, 7, 8]
