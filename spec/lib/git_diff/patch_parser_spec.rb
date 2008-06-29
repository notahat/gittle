require File.dirname(__FILE__) + '/../../spec_helper'
require 'git_diff'


describe GitDiff::PatchParser do
  
  it "should parse a path" do
    GitDiff::PatchParser.parse_path('abc').to_s.should == 'abc'
    GitDiff::PatchParser.parse_path('a/b/c').to_s.should == 'a/b/c'
  end
  
  it "should parse a path with escaped spaces" do
    GitDiff::PatchParser.parse_path('a\ b\ c').to_s.should == 'a b c'
  end
  
end
