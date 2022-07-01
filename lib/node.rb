DefNode = Struct.new :name, :arg_names, :body
IntegerNode = Struct.new :value
StringNode = Struct.new :value
CallNode = Struct.new :name, :arg_exprs
VarRefNode = Struct.new :value
