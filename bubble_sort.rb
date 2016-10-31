def bubble_sort(array)
	n = array.length

	loop do 
	# [1, 4, 1, 3, 4, 1, 3, 3]
		
		swapped = false

		(n-1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i +1], array[i]
			end		
		end

		break if not swapped
	end

	array
end

a = [1, 4, 1, 3, 4, 1, 3, 3]
puts bubble_sort(a)

#Sorting by word length
def bubble_sort_by(numbers)
	(numbers.length-1).times{
		for i in 0...numbers.length-1
			if yield(numbers[i], numbers[i+1]) > 0
				numbers[i], numbers[i+1] = numbers[i+1], numbers[i]
			end
		end
	}
	return numbers
end

puts bubble_sort([4,3,78,2,0,2])
puts bubble_sort_by(["hi","hello","hey"]) {|left, right|
	left.length - right.length
}