class MyEach

  def initialize(collection)
    @collection = collection
  end

  def each(&block)
    puts 'each inside MyEach class'
    @collection.each(&block)
  end
end

ruby_collection = [1, 2, 3, 4, 5]
my_collection = MyEach.new(ruby_collection)
puts my_collection.inspect

my_collection.each {|mc| puts mc }

class Array
  def each(&block)
    puts 'each inside Array class'
    i = 0
    while i < size
      yield at(i)
      i += 1
    end
  end
end

ruby_collection.each { |c| puts c}
