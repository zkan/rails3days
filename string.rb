name = 'John'
name2 = "John" # Prefer double quotes - ตอนนี้ performance ไม่ต่างกับ single quote แล้ว


# Concatenation
c = "a" + "b"
c2 = "name: #{name}" # Prefer this way
c3 = "name: " + name
c4 = format("name: %s", name)

first = name[0]
last = name[-1]
before_last = name[-2]

# Symbol - ใช้ในกรณีที่เป็น key ซึ่งจริง ๆ จะ interchangable กับ string ซึ่ง symbol จะใช้ memory น้อยกว่า
another_name = :Kan
category = [:fruit, :vegetable]

# strip
"Kan\n".strip

# .empty?
# .include?

# .match
name.match(/j/) # => ได้ object MatchData ถ้าอยากได้ string เราจะสั่ง .to_s อีกที

# .gsub
name.gsub(/j/, "")

# HEREDOC
content = <<-CONTENT
Lorm Ipsum asadd
Hello WOrld
Yo yo
CONTENT

content = <<-HHHH
Lorm Ipsum asadd
Hello WOrld
Yo yo
HHHH

sql = <<-SQL
SELECT * FROM `users` WHERE name = '#{name}'
SQL
