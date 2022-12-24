#!/usr/bin/env ruby

counts = [0]

File.read('input.txt').each_line do |line|
  if line.strip.empty?
    counts << 0
    next
  end

  counts[-1] += line.to_i
end

puts counts.sort!.last
puts counts[-3..-1].sum
