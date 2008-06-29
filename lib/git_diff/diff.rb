module GitDiff
  module Diff
    
    class Diff < Treetop::Runtime::SyntaxNode
      def git_patches
        elements
      end
    end
    
  end
end