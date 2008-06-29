require 'patch/parser'

# A parser for unified-diff format patches.
module Patch  
  
  class Patch < Treetop::Runtime::SyntaxNode
    def source_path
      source_line.path.to_s
    end
    
    def target_path
      target_line.path.to_s
    end
  end
  
  class Chunk < Treetop::Runtime::SyntaxNode
    def old_line_number
      range_info.old_line_number.to_i
    end
    
    def new_line_number
      range_info.new_line_number.to_i
    end
  end
  
  class ChunkLine < Treetop::Runtime::SyntaxNode
    def signifier
      signifier_node.to_s
    end
    
    def text
      text_node.to_s
    end
    
    def add?
      signifier == '+'
    end

    def delete?
      signifier == '-'
    end

    def note?
      signifier == '\\'
    end
  end

  class Path < Treetop::Runtime::SyntaxNode
    def to_s
      text_value.gsub('\ ', ' ')
    end
  end
  
  class NaturalNumber < Treetop::Runtime::SyntaxNode
    def to_i
      text_value.to_i
    end
  end
  
end
