#!/usr/bin/env ruby

score = 0

File.read('input.txt').each_line do |line|
  p1, p2 = line.strip.split(' ')

  case p1
    when 'A'
      score += 4 if p2 == 'X'
      score += 8 if p2 == 'Y'
      score += 3 if p2 == 'Z'
    when 'B'
      score += 1 if p2 == 'X'
      score += 5 if p2 == 'Y'
      score += 9 if p2 == 'Z'
    when 'C'
      score += 7 if p2 == 'X'
      score += 2 if p2 == 'Y'
      score += 6 if p2 == 'Z'
  end
end

puts score

score = 0

File.read('input.txt').each_line do |line|
  p1, p2 = line.strip.split(' ')

  case p1
    when 'A'
      score += 3 if p2 == 'X'
      score += 4 if p2 == 'Y'
      score += 8 if p2 == 'Z'
    when 'B'
      score += 1 if p2 == 'X'
      score += 5 if p2 == 'Y'
      score += 9 if p2 == 'Z'
    when 'C'
      score += 2 if p2 == 'X'
      score += 6 if p2 == 'Y'
      score += 7 if p2 == 'Z'
  end
end

puts score
