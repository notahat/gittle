require File.dirname(__FILE__) + '/../spec_helper'
require 'patch'
require 'treetop_extensions'

describe PatchParser do
  
  it "should parse a path" do
    PatchParser.parse_path('abc').to_s.should == 'abc'
    PatchParser.parse_path('a/b/c').to_s.should == 'a/b/c'
  end
  
  it "should parse a path with escaped spaces" do
    PatchParser.parse_path('a\ b\ c').to_s.should == 'a b c'
  end
  
end
