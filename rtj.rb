#!/usr/bin/env ruby
require_relative 'lib/tokenizer'
require_relative 'lib/token'
require_relative 'lib/parser'
require_relative 'lib/generator'

src = ARGV[0]
target = ARGV[1]

tokens = Tokenizer.new(File.read(src)).tokenize
tree = Parser.new(tokens).parse
generated = Generator.new.generate(tree)

File.open("#{target}.js", 'w') { |f| f.write(generated) }