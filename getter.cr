class Foo

  getter :value

  def initialize(@value : Int32); end

end

foo = Foo.new(1)
pp foo.value
