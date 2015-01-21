


Four features to look for in programming languages

1. package management
1. ?
1. ?
1. ?


----

"Hello, world!" in Ruby

```ruby
puts "Hello, world!"
```

To put a quote in string

```ruby
my_string= "How do you say \"Foo\" in Ruby?"
```

----

Integers and strings aren't primitives in Ruby, they're objects.

Basic form in Ruby:

```ruby
object.method
```

? "object" is to "class" as "method" is to "instance" ?


```
$ irb 

2.2.0 :001 > my_string= "How do you say \"Foo\" in Ruby?"
 
2.2.0 :007 > puts my_string

How do you say "Foo" in Ruby?

2.2.0 :002 > my_string.class

 => String 

2.2.0 :003 > my_string.class.superclass

 => Object 

2.2.0 :004 > 77.class

 => Fixnum 

2.2.0 :006 > 77.class.superclass

 => Integer 
```

Objects can inherit from each other.

----

my_num.chomp returns chomped variable

my_num.chomp! reassigns chomped variable to variable




