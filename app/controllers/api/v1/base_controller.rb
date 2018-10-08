module Api
  class BaseController < ApplicationController
    include DeviseTokenAuth::Concerns::SetUserByToken
    protect_from_forgery :null_session
  end
end