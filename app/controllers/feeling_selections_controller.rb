class FeelingSelectionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  def index; end
end
