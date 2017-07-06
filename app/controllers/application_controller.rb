class ApplicationController < ActionController::API
    include ActionController::Serialization
    include ActionController::HttpAuthentication::Token::ControllerMethods
    #respond_to? :json
  
  # Add a before_action to authenticate all requests.
  # Move this to subclassed controllers if you only
  # want to authenticate certain methods.
  before_action :authenticate, except: [:apikey] 

  protected

  # Authenticate the user with token based authentication
  def authenticate
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |token, options|
      @current_user = User.find_by(api_key: token)
    end
  end

  def render_unauthorized(realm = "Application")
    self.headers["WWW-Authenticate"] = %(Token realm="#{realm.gsub(/"/, "")}")
    render json: 'Please use Athutentication to use this API, You can request for api keys from spkishore007@gmail.com', status: :unauthorized
  end
    
end
