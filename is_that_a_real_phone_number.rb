# Congratulations! That Special Someone has given you their phone number.

# But WAIT, is it a valid number?

# Your task is to write a function that verifies whether a given string contains a valid British mobile (cell) phone number or not.

# If valid, return 'In with a chance'.

# If invalid, or if you're given an empty string, return 'Plenty more fish in the sea'.

# A number can be valid in the following ways:

# Here in the UK mobile numbers begin with '07' followed by 9 other digits, e.g. '07454876120'.

# Sometimes the number is preceded by the country code, the prefix '+44', which replaces the '0' in ‘07’, e.g. '+447454876120'.

# And sometimes you will find numbers with dashes in-between digits or on either side, e.g. '+44--745---487-6120' or '-074-54-87-61-20-'. As you can see, dashes may be consecutive.


def validate_number(string)
  phone_number = string.delete('-').chars
  if phone_number.length == 11
    method07(phone_number)
  elsif phone_number.length == 13
    method44(phone_number)
  else
    'Plenty more fish in the sea'
  end
end

def method07(input)
  if input[0] == '0' && input[1] == '7'
      'In with a chance'
  else
      'Plenty more fish in the sea'
  end
end

def method44(input)
  if input[0] == '+' && input[1] == '4' && inpt[2] == '4'
      'In with a chance'
  else
      'Plenty more fish in the sea'
  end
end


validate_number("0745--487-61-20")