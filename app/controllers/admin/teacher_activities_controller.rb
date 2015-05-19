class Admin::TeacherActivitiesController < ApplicationController
  layout 'admin'
  def index
    @activities = Activity.all
    # @teacher_activity = Activity.all
  end
  def show
    @teacher_activity = Activity.find(params[:id])
    @teacher_activities = TeacherActivity.where(activity_id: params[:id] )
  end
end
