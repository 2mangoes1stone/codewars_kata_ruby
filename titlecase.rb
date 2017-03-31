# Arguments (Haskell)

# First argument: space-delimited list of minor words that must always be lowercase except for the first word in the string.
# Second argument: the original string to be converted.
# Arguments (Other languages)

# First argument (required): the original string to be converted.
# Second argument (optional): space-delimited list of minor words that must always be lowercase except for the first word in the string. The JavaScript/CoffeeScript tests will pass undefined when this argument is unused.
# Example

# title_case('a clash of KINGS', 'a an the of') # should return: 'A Clash of Kings'
# title_case('THE WIND IN THE WILLOWS', 'The In') # should return: 'The Wind in the Willows'
# title_case('the quick brown fox') # should return: 'The Quick Brown Fox'

def title_case(title, minor_words = '')
  array = title.split(" ").map(&:downcase)
  solution = []

  array.each_with_index do |s, i|
    if i == 0
      solution << s.capitalize
    elsif minor_words.split(" ").map(&:downcase).include? (s)
      solution << s.downcase
    else
      solution << s.capitalize
    end
  end
  solution.join(' ')
end
