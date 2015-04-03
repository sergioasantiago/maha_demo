class CompaniesController < ApplicationController
  layout false

  before_action :authenticate_company!

  def index

  end
end
