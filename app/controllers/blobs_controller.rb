class BlobsController < ApplicationController
  before_filter :find_repo
  
  def show
    @blob = @repo.blob(params[:id])
  end
  
  def find_repo
    @repo = Repo.find(params[:repo_id])
  end
end