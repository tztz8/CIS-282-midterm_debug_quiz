# Program to show the smallest number in an array
# Lets user view the array, add a new number and show smallest number in the array
#
# INDENT and REFORMAT code as appropriate to COURSE standards ( DAVE STANDARD CODING - DSC ).
# Debug and fix the code so that it works correctly.
# Print out the final copy and turn it in with your NAME on it.
#

def pause
  print "Press enter to continue"
  gets
end

numbers = [100,20,30,40,80]
menu_selection = 0
while menu_selection != 5 do
  puts "1 Show All Numbers"
  puts "2 Add a Number"
  puts "3 Show Smallest Number"
  puts "4 Clear all Numbers"
  puts
  puts "5 Exit Program"
  menu_selection = gets.chomp.to_i
  if( menu_selection == 1 ) then
    numbers.each do
      |n|
      puts n
    end
    pause
  elsif( menu_selection == 2 ) then
    puts "Enter a new number: "
    numbers[ numbers.length] = gets.chomp.to_i
  elsif( menu_selection == 3 ) then
    index = 0
    smallest = numbers.min
    puts "Smallest number is: #{ smallest }"
    pause
  elsif( menu_selection == 4 ) then
    puts "Clearing all Number"
    numbers = []
  else
    if( menu_selection != 5 ) then
      puts "invalid input"
      pause
    end
  end
end