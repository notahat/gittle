require 'diff'

class CommitsController < ApplicationController
  before_filter :find_repo
  
  def show
    @commit = @repo.commit(params[:id])
    @raw_diff = @repo.grit_repo.diff(@commit.parents.first, @commit)
    @parser = DiffParser.new
    @diff = @parser.parse(@raw_diff)
  end
  
  def find_repo
    @repo = Repo.find(params[:repo_id])
  end
end