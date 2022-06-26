class Generator
  def generate(node)
    case node
    when DefNode
      format('function %s(%s) { return %s; }', node.name, node.arg_names.join(', '), generate(node.body))
    when CallNode
      format('%s(%s)', node.name, node.arg_exprs.map { |expr| generate(expr) }.join(', '))
    when VarRefNode
      node.value
    when IntegerNode
      node.value
    else
      raise "Unexpected node type: #{node.class}"
    end
  end
end
