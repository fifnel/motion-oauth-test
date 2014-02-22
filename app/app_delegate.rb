class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    root = MainController.alloc.init
    navigation = UINavigationController.alloc.initWithRootViewController(root)
    
    @window.rootViewController = navigation

#    item_list_controller = ItemListController.alloc.initWithNibName(nil, bundle: nil)
#    navigation_controller = UINavigationController.alloc.initWithRootViewController(item_list_controller)
#    root = AuthWebViewConroller.alloc.init

#    sandbox_controller = SandboxController.alloc.initWithTitle('sandbox')

#    tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
 #   tab_controller.viewControllers = [navigation_controller, sandbox_controller]
 #     tab_controller.viewControllers = [auth_web_view_controller]


    true
  end
end
