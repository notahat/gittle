module GitDiff
  module Patch  
    
    class ChunkLine < Treetop::Runtime::SyntaxNode
      def add?
        signifier.to_s == '+'
      end
  
      def delete?
        signifier.to_s == '-'
      end
  
      def note?
        signifier.to_s == '\\'
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
end
