#$LOAD_PATH <<'.'
require_relative "MyEnumerable"
class MyList
    include MyEnumerable
    # @list 
    def initialize(*list)
        @list=list
    end
    def each(&block)
        @list.each(&block)
    end
end

l = MyList.new(2,3,4)
puts l.inspect
puts(l.all? { |e| e < 5 })