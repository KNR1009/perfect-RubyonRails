class BooksController < ApplicationController
  skip_before_action :requier_login, only: [:show]
  def index
    raise ArgumentError>, "somethig errors"
  end
  def show
    render json: "login処理が走ります"
  end
end
