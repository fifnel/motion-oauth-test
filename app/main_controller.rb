class MainController < UIViewController
#  attr_accessor :button
  stylesheet :main_screen

  layout :hai do
    @result = subview(UILabel, :label, text:'foobar')
    @button = subview(UIButton.buttonWithType(UIButtonTypeSystem), :hi_button)
    @button.when(UIControlEventTouchUpInside) do
      signInToCustomService
      @result.text = 'tapped'
#      App.alert('foobar')
    end
  end  


  def viewDidLoad
    super

    self.title = 'teacup and OAuth test'
  end



  # client_id - feedly (fixed)
  # redirect_uri - https:#cloud.feedly.com/feedly.html (fixed)
  # scope - https:#cloud.feedly.com/subscriptions (fixed)
  # response_type - code (fixed)
  # provider - google (fixed)
  # migrate - false (fixed, now feedly not support migrate google reader)

  def authForCustomService

    client_id     = "sandbox"     
    client_secret = "CM786L1D4P3M9VYUPOB8" 

    token_url = NSURL.URLWithString("http:#sandbox.feedly.com/v3/auth/token")

    redirect_uri = "http:#localhost"

    auth = GTMOAuth2Authentication.authenticationWithServiceProvider(
      "MyFeedlyApp",
      tokenURL:token_url,
      redirectURI:redirect_uri,
      clientID:client_id,
      clientSecret:client_secret )

    auth
  end

  def signInToCustomService
    # self.signOut

    auth = self.authForCustomService

    auth.scope = "https:#cloud.feedly.com/subscriptions"

    keychaina_item_name = 'foobar'
    auth_url = NSURL.URLWithString("http:#sandbox.feedly.com/v3/auth/auth")

    viewController = GTMOAuth2ViewControllerTouch.alloc.initWithAuthentication(
      auth,
      authorizationURL:auth_url,
      keychainItemName:keychaina_item_name,
      delegate:self,
      finishedSelector:'viewController:finishedWithAuth:error:' )

    self.navigationController.pushViewController(viewController, animated:true)
  end

  def viewController(viewController, finishedWithAuth:auth, error:error)
    if error != nil
      pp error.userInfo
      # Authentication failed (perhaps the user denied access, or closed the
      # window before granting access)
      # puts "Authentication error: #{error}"
      # responseData = error.userInfo.objectForKey("data")
      # if responseData.length > 0
      #   str = NSString.alloc.initWithData(responseData, encoding:NSUTF8StringEncoding)
      #   puts "#{str}"
      # end

#      self.auth = nil

    else
      pp auth
      # Authentication succeeded
      #
      # At this point, we either use the authentication object to explicitly
      # authorize requests, like
      #
      #  [auth authorizeRequest:myNSURLMutableRequest
      #       completionHandler:^(NSError *error) {
      #         if (error == nil) {
      #           # request here has been authorized
      #         }
      #       }];
      #
      # or store the authentication object into a fetcher or a Google API service
      # object like
      #
      #   [fetcher setAuthorizer:auth];

      # save the authentication object
#      self.auth = auth;
    end
  end

# - (void)signOut {
#   if ([self.auth.serviceProvider isEqual:kGTMOAuth2ServiceProviderGoogle]) {
#     # remove the token from Google's servers
#     [GTMOAuth2ViewControllerTouch revokeTokenForGoogleAuthentication:self.auth];
#   }

#   # remove the stored Google authentication from the keychain, if any
#   [GTMOAuth2ViewControllerTouch removeAuthFromKeychainForName:kKeychainItemName];

#   # remove the stored DailyMotion authentication from the keychain, if any
#   [GTMOAuth2ViewControllerTouch removeAuthFromKeychainForName:kDailyMotionAppServiceName];

#   # Discard our retained authentication object.
#   self.auth = nil;

#   [self updateUI];
# }

end
