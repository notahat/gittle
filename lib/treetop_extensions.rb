class Treetop::Runtime::SyntaxNode
  def to_s
    text_value
  end
  
  def each(&block)
    elements.each(&block)
  end
end

class Treetop::Runtime::CompiledParser
  def self.method_missing(symbol, *args)
    if symbol.to_s =~ /^parse_(.*)$/
      parser = self.new
      parser.root = $1.to_sym
      parser.parse(*args)
    else
      super
    end
  end
end
