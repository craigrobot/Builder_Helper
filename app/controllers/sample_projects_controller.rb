class SampleProjectsController < ApplicationController
  def index
    @sample_projects = SampleProject.all
  end

  def show
    @sample_project = SampleProject.find(params[:id])
  end
end
