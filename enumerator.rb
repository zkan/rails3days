# Enumerable
# การนับทีละ 1

arr = [1, 2, 3, 4]
h = {
  name: "John",
  age: 18
}

# .each

arr.each { |i| puts i }

arr.each do |i|
  puts i
end

h.each { |k, v| puts k; puts v }

h.each do |k, v|
  puts k
  puts v
end

# map
arr.map { |i| i * 2 }

arr.map do |k, v|
  { k => v}
end.reduce(&:merge)

# reduce
arr.map { |i| i * 2 }
   .reduce(0) { |sum, i| sum + i }

arr.map { |i| i * 2 }
   .reduce { |sum, i| sum + i }

# split
"John, Jack".split(", ").map { |name| { name: name } }

"John, Jack".split(", ").map(&:strip)

[1, 2, 3, nil].all? { |i| !i.nil? }
