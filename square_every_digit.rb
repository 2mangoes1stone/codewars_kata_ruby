# Welcome. In this kata, you are asked to square every digit of a number.

# For example, if we run 9119 through the function, 811181 will come out.

# Note: The function accepts an integer and returns an integer

def square_digits(num)
    return num.to_s.chars.map{|i| i.to_i * i.to_i}.join.to_i
end