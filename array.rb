arr = []
arr2 = Array.new # ไม่ recommend แบบนี้

arr3 = Array.new(3, 0) # dimension, default value -- ในงานจริงไม่ค่อยได้ใช้เลย

arr4 = [1, 2, 3]
arr4.first
arr4.first(2) # first 2 ตัวแรก
arr4.last
arr4.last(2) # last 2 ตัวท้าย

[1, 2] + [3] # => [1, 2, 3]
[1, 2] - [2] # => [1]

[1, 2] | [3] # Union
[1, 2] & [2] # Intersection

arr.push(5) # append 5 to array -> mutated
[1, 2, 3, 4] << 5 # not mutated

arr.pop # pop last one out -> mutated

[1, 2, 3, 4].join
[1, 2, 3, 4].join(", ")
[1, 2, 3, 4].join(" ")

# Set
numbers = Set.new
numbers << 1
numbers << 1
numbers << 1
numbers << 2
# => #<Set: {1, 2}>
numbers.to_a # To array
# Check if item is included?
numbers.include?(1)
