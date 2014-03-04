class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
  end

  def create
  end

  def show
  end

end
