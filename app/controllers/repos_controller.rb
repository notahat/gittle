class ReposController < ApplicationController
  # GET /repos
  # GET /repos.xml
  def index
    @repos = Repo.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @repos }
    end
  end

  # GET /repos/1
  # GET /repos/1.xml
  def show
    @repo = Repo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @repo }
    end
  end

  # GET /repos/new
  # GET /repos/new.xml
  def new
    @repo = Repo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @repo }
    end
  end

  # GET /repos/1/edit
  def edit
    @repo = Repo.find(params[:id])
  end

  # POST /repos
  # POST /repos.xml
  def create
    @repo = Repo.new(params[:repo])

    respond_to do |format|
      if @repo.save
        flash[:notice] = 'Repo was successfully created.'
        format.html { redirect_to(@repo) }
        format.xml  { render :xml => @repo, :status => :created, :location => @repo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @repo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /repos/1
  # PUT /repos/1.xml
  def update
    @repo = Repo.find(params[:id])

    respond_to do |format|
      if @repo.update_attributes(params[:repo])
        flash[:notice] = 'Repo was successfully updated.'
        format.html { redirect_to(@repo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @repo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /repos/1
  # DELETE /repos/1.xml
  def destroy
    @repo = Repo.find(params[:id])
    @repo.destroy

    respond_to do |format|
      format.html { redirect_to(repos_url) }
      format.xml  { head :ok }
    end
  end
end
