class ProfilesController < ApplicationController
  before_action :authenticate_user!
end
