# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

# Note: If the number is a multiple of both 3 and 5, only count it once.

def solution(number)
    array = (1..number).to_a
    multiples_array = []

    array.each do |i|
        if i % 3 == 0 || i % 5 == 0
            multiples_array << i
        end
    end

    if multiples_array[-1] == number
        multiples_array.pop
    end
    
    multiples_array.reduce(0, :+)
end 

