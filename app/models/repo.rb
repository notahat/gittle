require 'grit'

class Repo < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :path
  
  def grit_repo
    @grit_repo ||= Grit::Repo.new(path)
  end
  
  def commits
    grit_repo.commits
  end
  
  def commit(sha)
    grit_repo.commit(sha)
  end
  
  def blob(sha)
    grit_repo.blob(sha)
  end
  
  def tree(sha)
    grit_repo.tree(sha)
  end
end
