# frozen_string_literal: true

# Get the string to be encoded from the user
puts 'Please enter the string to be encoded'
string = gets.chomp
# Get the shift_amount from the user
puts 'Please enter the shift amount'
shift_amount = gets.chomp.to_i
# If the shift_amount is greater than 26 set shift_amount to %=26
shift_amount %= 26 if shift_amount > 26
# Until the end of the string is reached:
#   Read the next_char of the string
#   Convert it to charcode
#   Change its value by the shift amount and set it to the new value
#   Convert it back to a string
i = 0
until i >= string.length
  current_number = string[i].ord
  if current_number >= 65 && current_number <= 90
    current_number += shift_amount
    current_number -= 26 if current_number > 90
    current_number += 26 if current_number < 65
  end
  if current_number >= 97 && current_number <= 122
    current_number += shift_amount
    current_number -= 26 if current_number > 122
    current_number += 26 if current_number < 97
  end
  string[i] = current_number.chr
  i += 1
end
# Print the new string
puts 'Your encoded string is:'
puts string
