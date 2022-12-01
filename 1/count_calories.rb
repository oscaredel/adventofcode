elf_calories = {}

elf = 1

File.open("input.txt").each do |line|
    if line.to_i == 0
        elf += 1
        next
    end

    calories = line.to_i
    if elf_calories[elf].nil?
        elf_calories[elf] = calories
    else
        elf_calories[elf] += calories
    end
end

elf_calories = elf_calories.map.sort_by {|k,v| v}.reverse

p elf_calories.first(3).map {|k,v| v}.reduce(:+)