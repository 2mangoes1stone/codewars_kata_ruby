# Write simple .camelcase method (camel_case function in PHP) for strings. All words must have their first letter capitalized without spaces.

# For instance:

# 'hello case'.camelcase => HelloCase
# 'camel case word'.camelcase => CamelCaseWord

class String
  def camelcase
    self.split.map(&:capitalize).join(' ').delete(' ')
  end
end