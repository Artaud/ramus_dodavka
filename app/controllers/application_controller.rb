class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include ActionController::HttpAuthentication::Basic::ControllerMethods

  http_basic_authenticate_with name: 'admin', password: 'admin'

end
