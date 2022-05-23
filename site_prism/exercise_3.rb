# frozen_string_literal: true

# Pre-requisite setup required for each test
require_relative 'setup'
require_relative 'pages/dropdown'
Setup.setup

# Create and load the page
page = Dropdown.new
page.load

# EXERCISE 3
# Natively we are going to simulate a user using a mouse to pick the last option from a dropdown menu

# 1) Find the original dropdown with its label
new_list = page.dropdown_list
puts new_list.text
# 2) Click this and a bunch of new options should appear
page.dropdown_list.click

# 3) Find all of the new dropdown options - Store these in a list
answer = page.dropdown_options

# 4) Click on the last item from our list
page.dropdown_options.last.click

# 5) Check we have done this correctly by finding out the label of the displayed option
label = page.dropdown_options.last.text
puts label

# 6) Compare the visible label to the list we stored from the dropdowns
selected_option = page.dropdown_options.select  do |option|
  option['selected']
end
puts selected_option.first.text

# Wait and close
sleep 2

# THOUGHT(s)
# When something fails, read the error. Maybe we need to use a different name for one of our previous methods?
# When indexing items, and we want to read in reverse, how do we signify this?
# In computers, the = sign does not mean is equal to. How do we say are 2 things equal?
