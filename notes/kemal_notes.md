# KEMAL #

- HTTP Verbs - RESTFul
- Built-in WebSocket
- Streamable request / response context
- Built-in parameter Parser
- Pluggable middlewares
- Filters
- Generic View Templating

### Examples ###

```crystal
require "kemal"

get "/" do
    {name: "Kemal", awesome: true}
end

Kemal.run
```

```crystal
require "kemal"

get "/" do
    .....
end

post "/" do
    .....
end
.
.
.
.
# Other methods

Kemal.run

```

### Generic View Templating

Kemal uses Kilit as the view engine

```crystal
hello.ecr (ecr #=> embed crystal)
<h1> This is just like ERB! </h1>
<% my_awesome_variable = "Mauricio" %>
```

I can render my view like

```crystal
    render "src/views/hello.ecr"

    # or with layout

    render "src/views/hello.ecr", "src/views/layouts/layout.ecr"
```

- Shards is as Gems in ruby, example
```crystal
shards.yml

    deps do
        github "something/something"
    end
```
