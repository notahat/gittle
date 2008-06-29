require 'patch'
require 'diff/parser'

# A parser for the output of git-diff.
module Diff
  
  class Diff < Treetop::Runtime::SyntaxNode
    def patches
      elements
    end
  end
  
  class GitPatch < Treetop::Runtime::SyntaxNode
    def path
      source_path[2..-1]
    end
    
    def source_path
      diff_line.source_path.to_s
    end
    
    def target_path
      diff_line.target_path.to_s
    end
    
    def chunks
      patch.chunks
    end
  end
  
end