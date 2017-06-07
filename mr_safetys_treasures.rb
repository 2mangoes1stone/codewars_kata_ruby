# Introduction

# Mr. Safety loves numeric locks and his Nokia 3310. He locked almost everything in his house. He is so smart and he doesn't need to remember the combinations. He has an algorithm to generate new passcodes on his Nokia cell phone. 
# postimage

# Task

# Can you crack his numeric locks? Mr. Safety's treasures wait for you. Write an algorithm to open his numeric locks. Can you do it without his Nokia 3310?

# Input

# The str or message (Python) input string consists of lowercase and upercase characters. It's a real object that you want to unlock.

# Output

# Return a string that only consists of digits.
# Example

# unlock("Nokia")  // => 66542
# unlock("Valut")  // => 82588
# unlock("toilet") // => 864538


def unlock(str)
  key = {
    2 => ['a', 'b', 'c'],
    3 => ['d', 'e', 'f'],
    4 => ['g', 'h', 'i'],
    5 => ['j', 'k', 'l'],
    6 => ['m', 'n', 'o'],
    7 => ['p', 'q','r', 's'],
    8 => ['t', 'u', 'v'],
    9 => ['w', 'x', 'y', 'z']
  }

  output = []
  str.downcase.chars.each {|x| key.any? {|k,v| output << k if v.include? x} }
  output.join

end


p unlock("Nokia")



 