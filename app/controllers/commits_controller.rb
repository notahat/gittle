class CommitsController < ApplicationController
  before_filter :find_repo
  
  def show
    @commit = @repo.commit(params[:id])
  end
  
  def find_repo
    @repo = Repo.find(params[:repo_id])
  end
end