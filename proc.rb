# https://www.youtube.com/watch?v=aISNtCAZlMg

l = ['a','b','c']

l1 = l.map do |ltr|
  ltr.upcase
end

l2 = l.map { |ltr| ltr.upcase }

l3 = l.map(&:upcase)

puts l1
puts l2
puts l3


l_even = [2,5,12,9,38,55,4,32]

puts l_even.all? { |num| num.even? }
puts l_even.all?(&:even?)

puts l_even.group_by { |n| n.even? }
puts l_even.group_by(&:even?)

a = lambda { |i| i * i }
puts a.call(2)

my_proc = proc { |letter|  letter.upcase }
p %w{a b c}.map(&my_proc)

m = method(:puts).to_proc

puts m.call('abc')

m2 = method(:puts)
p %w{a b c}.each(&m2)

p = :upcase.to_proc
p(%w{a b c}.map(&p))

p(%w{a b c}.map(&:upcase))
