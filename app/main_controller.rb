class MainController < UIViewController
#  attr_accessor :button
  stylesheet :main_screen

  layout :hai do
    @result = subview(UILabel, :label, text:'foobar')
    @button = subview(UIButton.buttonWithType(UIButtonTypeSystem), :hi_button)
    @button.when(UIControlEventTouchUpInside) do
      @result.text = 'tapped'
      App.alert('foobar')
    end
  end  


  def viewDidLoad
    super

    self.title = 'teacup and OAuth test'
  end

  # layout do
  #   subview(UIButton, :hi_button)
  # end

#   def initWithNibName(name, bundle: bundle)
#     super
# #    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemFavorites, tag: 1)

#     self
#   end

  # def viewDidLoad
  #   super

  #   self.view.backgroundColor = UIColor.whiteColor

  #   # @label = UILabel.alloc.initWithFrame(CGRectZero)
  #   # @label.text = "Taps"
  #   # @label.sizeToFit
  #   # @label.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)
  #   # self.view.addSubview @label

  #   # self.title = "Tap!!!"

  #   # right_button = UIBarButtonItem.alloc.initWithTitle('Push', style: UIBarButtonItemStyleBordered, target: self, action: 'push')
  #   # self.navigationItem.rightBarButtonItem = right_button
  # end

#   def push
#    # new_controller = TapController.alloc.initWithNibName(nil, bundle: nil)
#    # self.navigationController.pushViewController(new_controller, animated: true)
# #   openURLWithOAuth
#     GTMOAuth2ViewControllerTouch.alloc
#   end

#   def openURLWithOAuth
#     #UIApplication.sharedApplication.openURL('http://sandbox.feedly.com/v3/auth/auth?client_id=sandbox&client_secret=Z5ZSFRASVWCV3EFATRUY&response_type=code&redirect_uri=http://localhost&scope=https://cloud.feedly.com/subscriptions')
#     App.open_url('http://sandbox.feedly.com/v3/auth/auth?client_id=sandbox&client_secret=Z5ZSFRASVWCV3EFATRUY&response_type=code&redirect_uri=foobar:/123/456/&scope=https://cloud.feedly.com/subscriptions')
#   end

#   def myCustomAuth
#     myConsumerKey = "sandbox"
#     myConsumerSecret = "Z5ZSFRASVWCV3EFATRUY"

#     #  s = 'http://sandbox.feedly.com/v3/auth/auth?client_id=sandbox&client_secret=Z5ZSFRASVWCV3EFATRUY&response_type=code&redirect_uri=http://localhost&scope=https://cloud.feedly.com/subscriptions'

#     auth = GTMOAuthAuthentication.alloc.initWithSignatureMethod(kGTMOAuthSignatureMethodHMAC_SHA1, consumerKey:myConsumerKey, privateKey:myConsumerSecret)
#     auth.serviceProvider = "Feedly Auth Service"

#     auth

#   end

#   def signInToCustomService

#     # requestURL = NSURL.URLWithString("http://example.com/oauth/request_token")
#     # accessURL = NSURL.URLWithString("http://example.com/oauth/access_token")
#     # authorizeURL = NSURL.URLWithString("http://example.com/oauth/authorize")
#     # scope = "http://example.com/scope"

#     # auth = self.myCustomAuth

#     # auth.setCallback("http://www.example.com/OAuthCallback")

#     # viewController = GTMOAuthViewControllerTouch.alloc.initWithScope(scope, language:nil, requestTokenURL:requestURL, authorizeTokenURL:authorizeURL, accessTokenURL:accessURL, authentication:auth, appServiceName:"My App: Custom Service", delegate:self, finishedSelector:@selector(viewController:finishedWithAuth:error:))

#     # self.navigationController.pushViewController(viewController, animated:true)
#   end

end
