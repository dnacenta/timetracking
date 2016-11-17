class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc).limit(10)
  end

  def new
    @project = Project.new
    render 'new'
  end

  def create
    project = Project.new(:name => params[:project][:name], :description => params[:project][:description])
    project.save

    redirect_to("/project")
  end

  def show
    @project = Project.find_by(id: params[:id])
    unless @project
      render "no_projects_found"
    end
  end

  def delete
    @project = Project.find(params[:id]).destroy
    redirect_to action: 'index'
  end

  def delete_all
    Project.destroy_all
    redirect_to action: 'index'
  end
end
