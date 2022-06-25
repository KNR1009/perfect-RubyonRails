class ApplicationController < ActionController::API
  before_action :requier_login

  def requier_login
    puts "ログインしているかチェックします"
  end
end
