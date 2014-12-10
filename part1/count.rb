#!/usr/bin/ruby

companies = Hash.new(0)
File.open("top10_sample.csv","r").each_line do |line|
   comp_list = (line.delete! "[]\"\n").split(",")
   comp_list.each do |comp|
	companies[comp] += 1
   end
end
#sort the map by value
companies.sort_by {|x,y| y }
#print the output
companies.each {|key,value| puts "#{key} #{value}"}
