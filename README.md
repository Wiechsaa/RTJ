# RTJ 0.1v

## Ruby to JavaScript translator (pre-alpha)

RTJ produces JavaScript code from Ruby code.
Currently this program is in pre-alpha, I do not recommend using it for real world applications.

## Usage

```Bash
ruby rtj.rb [ruby-file] [target-file]
```

For example

```Bash
ruby rtj.rb input.rb output
```

Produces

```Ruby
# input.rb
def f(x, y) 
  add(10, add(x, y))
end
```

```JavaScript
// output.js
function f(x, y) { return add(10, add(x, y)); }
```
