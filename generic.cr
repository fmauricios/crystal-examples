class Foo(T)
  getter :value

  def initialize(@value : T); end

end

foo = Foo.new(1)
pp foo.value.abs

foo =  Foo.new('a')
pp foo.value.ord
