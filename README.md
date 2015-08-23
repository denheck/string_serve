# String Serve
(aka the completely irresponsible project for _whyday 2015)

## What it does
String Serve monkey-patches the String class to include the *serve* method on
all of it's instances. A WEBrick HTTP server will start at localhost:8080 displaying
whatever content is contained within the string. Some examples are as follows.

## How to use it
All you need to do is require it and start serving your strings!

```ruby
require 'string_serve'
```

### Build websites with ease!! All you need are Strings!

```ruby
"Hello, World".serve
```

### HTML strings work too! It must be valid though. Make sure it's valid here: https://validator.w3.org/

```ruby
%Q{
 <!doctype html>
 <html>
   <head>
     <title>Hello World</title>
   </head>
   <body>
     <h1>Hello World</h1>
   </body>
 </html>
}.serve
```

### Even JSON!

```ruby
require 'json'
JSON.generate({:hello => "world"}).serve
```

## This is great! I am going to start using it in production right away!
I wouldn't do that. How about a weird looking dog instead:

[](https://raw.githubusercontent.com/denheck/string_serve/master/dog.jpg)
