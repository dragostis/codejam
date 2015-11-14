gets.to_i.times do |t|
  audience = gets.split.last.split(//).map(&:to_i)

  needed = 0
  sum = 0

  audience.each_with_index do |e, i|
    if sum < i
      difference = i - sum

      needed += difference
      sum += difference
    end

    sum += e
  end

  puts "Case ##{t + 1}: #{needed}"
end
