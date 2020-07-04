# frozen_string_literal: true

# Get the string to be encoded from the user
# Get the shift_amount from the user
# If the shift_amount is greater than 26 set shift_amount to %=26
# Until the end of the string is reached:
#   Read the next_char of the string
#   ? Convert it to charcode ?
#   Change its value by the shift amount and set it to the new value
# Print the new string
