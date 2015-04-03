class NetworksController < ApplicationController
  layout false

  before_action :authenticate_network!

  def index

  end
end
