#!/usr/bin/env ruby

h = {}
('a'..'z').each_with_index { |k, v| h[k] = v + 1 }
('A'..'Z').each_with_index { |k, v| h[k] = v + 27 }

sum = 0

File.read('input.txt').each_line do |line|
  half = line.strip!.size / 2
  s1 = line[0...half].scan(/\w/)
  s2 = line[half..-1].scan(/\w/)
  diff = (s1 & s2).first

  sum += h[diff]
end

puts sum

sum = 0

File.readlines('input.txt').map(&:strip!).each_slice(3) do |a|
  a.map! { |v| v.split('') }
  diff = (a[0] & a[1] & a[2]).first

  sum += h[diff]
end

puts sum
