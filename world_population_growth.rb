
#Calculates world population growth each year for the next 25 years,
#  where current population is 6,962,259,595. 
#Simplifying assumption that the current growth rate will stay constant at 1.2%. 

#𝑝𝑜𝑝𝑢𝑙𝑎𝑡𝑖𝑜𝑛 𝑖𝑛 𝑦𝑒𝑎𝑟 𝑛 = 𝑐𝑢𝑟𝑟𝑒𝑛𝑡 𝑝𝑜𝑝𝑢𝑙𝑎𝑡𝑖𝑜𝑛 ∗ (1 + 𝑔𝑟𝑜𝑤𝑡ℎ 𝑟𝑎𝑡𝑒)^𝑛 
#year is n = 1 to 25
puts
puts "Current population is 6,962,259,595.\n"
current = 6_962_259_595
growth = 0.012

puts "Current growth rate will stay constant at 1.2%.\n"
puts
puts "World population growth each year for the next 25 years: \n"

year = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]

puts "  Year    Anticipated    Annual Increase"
year.each do |cur|
  print "% 5d" % cur 
  print " "
  present = current * (1 + growth)**cur  #
  print	"% 15d" % (current * (1 + growth)**cur) 
# past = current * (1 + growth)**(cur-1) 
# just_this_current_year = present - past 
  puts "% 15d" % ( current * (1 + growth)**cur   -   current * (1 + growth)**(cur-1) ) 
end

puts
double_current = 2 * current

i = 1
loop do 
# print "% 5d" % i  
# print " "
  present = current * (1 + growth)**i 
  
  if present >= double_current
	#puts i - 1
	puts "The population will double to #{double_current} in #{i} years."
	break
  end
  
  #puts	"% 15d" % (current * (1 + growth)**i) 
  i += 1
end