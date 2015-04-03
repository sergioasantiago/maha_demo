class ConsultantsController < ApplicationController
  layout false

  before_action :authenticate_consultant!

  def index

  end
end
