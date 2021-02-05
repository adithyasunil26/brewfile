#!/usr/bin/env ruby

brewlist = `brew list --formula`
casklist = `brew list --cask` 

puts
puts "tap \'caskroom/cask\'"
puts "tap \'homebrew/cask\'"
puts "tap \'homebrew/bundle\'"   
puts "tap \'homebrew/core\'"    
puts
puts "# Core Homebrew"

brewlist.split("\n").each do |item|
  puts "brew \'#{item}\'"
end

puts
puts "# Cask Apps"

casklist.split("\n").each do |item|
  puts "cask \'#{item}\'"
end

puts
