class LessonsController < ApplicationController
before_action :authenticate_user! #only authenticated users can view lessons page
before_action :require_user_enrolled_in_course, only: [:show] #ensure current user is enrolled in the course

  def show
  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

  def require_user_enrolled_in_course
    unless current_user.enrolled_in?(current_lesson.section.course)
      redirect_to course_path(current_lesson.section.course), alert: 'You must be enrolled to view that lesson.'
    end
  end
end
