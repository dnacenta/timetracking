class TimeEntriesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @entries = @project.time_entries
  end

  def new
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.new
  end

  def create
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.new(
      hours: params[:time_entry][:hours],
      minutes: params[:time_entry][:minutes]
    )
    if @entry.save
      redirect_to "/project/#{@project.id}/time_entries"
    else
      render "new"
    end
  end

  def edit
    @project = Project.find params[:project_id]
    @entry = @project.time_entries.find params[:id]
  end

  def update
    @project = Project.find_by(id: params[:project_id])
    @entry = @project.time_entries.find_by(id: params[:id])

    if @entry.update(
      hours: params[:time_entry][:hours],
      minutes: params[:time_entry][:minutes]
    )

      redirect_to "/project/#{@project.id}/time_entries"
    else
      render "edit"
    end
  end

  def delete
    @project = Project.find params[:project_id]
    @entry = @project.time_entries.find(params[:id]).destroy

    redirect_to action: 'index'
  end

  private

  def entry_params
    params.require(:time_entry).permit(:hours, :minutes)
  end
end
