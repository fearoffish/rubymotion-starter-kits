class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    # Set up Parse
    Parse.setApplicationId("PARSE_ID", clientKey:"PARSE_KEY")

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = HomeController.alloc.init
    @window.makeKeyAndVisible

    true
  end
end
