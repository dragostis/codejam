gets.to_i.times do |t|
  gets
  plates = gets.split.map(&:to_i)

  minutes = (1..plates.max).map do |i|
    plates.inject(0) { |a, e| a + (e - 1) / i } + i
  end.min

  puts "Case ##{t + 1}: #{minutes}"
end
