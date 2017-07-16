class ApplicationController < ActionController::API
    include ActionController::Serialization
    include ActionController::HttpAuthentication::Token::ControllerMethods
    #respond_to? :json
  before_action :tokenizing, except: [:apikey] 

  protected

  # Authenticating the user with token generation
  def tokenizing
    authenticate_api || unauthorized_api
  end

  def authenticate_api
    authenticate_with_http_token do |token, options|
      @current_user = User.find_by(api_key: token)
    end
  end

  def unauthorized_api(realm = "Application")
    self.headers["WWW-Authenticate"] = %(Token realm="#{realm.gsub(/"/, "")}")
    render json: 'Please use Athutentication to use this API, You can request for api keys from spkishore007@gmail.com', status: :unauthorized
  end
    
end
