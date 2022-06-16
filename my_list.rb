# $LOAD_PATH <<'.'
require_relative 'my_enumerable'
class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

l = MyList.new(2, 3, 4)
puts l.inspect
puts(l.all? { |e| e < 5 })
