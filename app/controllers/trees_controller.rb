class TreesController < ApplicationController
  before_filter :find_repo
  
  def show
    @tree = @repo.tree(params[:id])
  end
  
  def find_repo
    @repo = Repo.find(params[:repo_id])
  end
end