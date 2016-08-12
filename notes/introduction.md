# CRYSTAL INTRODUCTION

- Ruby Inspired Language
- Compiled with llvm
- Self hosted
- Static types, static dispatch
- Very fast

- LLVM: Crystal compiler

+ VALUE
    - Bool, Nil, Char
    - Number
        - Int32, Int64, Float32, Float64, ...
    - Struct, Tuple, Pointer
+ Reference (Class)
    - String, Array, Hash, ...

### UNIONS

```crystal
    arr = [1, 2, "a", "b"] # Array ( Int | String)

    Other example

    arr = [1, 2, 3]
    arr << 4            #=> [1, 2, 3, 4]
    arr << "Mauricio"   #=> Error, multiple types

    For solve this.

    arr = [1, 2, 3] of Int32 | String
    arr << 4             #=> [1, 2, 3, 4]
    arr << "Mauricio"    #=> [1, 2, 3, 4, "Mauricio"]
```

### BLOCKS

```crystal
    def times(n)
        while n > 0
            yield
            n -= 1
        end
    end

    times(10) do
        puts "Hello"
    end
```

### PROCS

```crystal
    f = ->(x: Int32) { x + 1 } # Int32 -> Int32
    f.call(5)
```

### CLOSURES

```crystal
    y = 42

    f = ->(x : Int32) { x + y }
    f.call(5) #=> 47

    y = 20
    f.call(5)
```

### METHOD OVERLOADING

Method overloading allows you to use a single method name, but "overload it" (provide more than one version) depending on "context" (which is typically the type or number of arguments passed in)

```crystal
    def sum(x : String, y : String)
        sum x.to_i, y.to_i
    end

    def sum(x : Int32)
        x
    end

    def sum(x , y)
        x + y
    end

    sum "12", "13" #=> 25
    sum 10         #=> 10
    sum 20, 30     #=> 50
```

### GLOBAL TYPE INFERENCE

- nil           # Nil
- false         # Bool
- 1             # Int32
- 1.5           # Float64
- 'a'           # Char
- "hi"          # String
- :hi           # Symbol

```crystal
    a = 1       # a :: Int32
    b = a       # b :: Int32

    if 1 == 2
        a = 42
    else
        a = "Hi"
    end

    #=> a = Int32 | String
```

### CONCURRENCY

```crystal
    require "http"

    spawn do
        HTTP::Client.get "http://google.com"
    end
```

- Crystal has metaprogramming via Macros
- Native code via LLVM
- Concurrency via Channels
- Type inference
