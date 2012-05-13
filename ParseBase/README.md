# Parse Base

A starter kit that is ready to use [Parse](http://www.parse.com/), uses the following projects:

* [parse_model](https://github.com/adelevie/ParseModel)
* [BubbleWrap](https://github.com/mattetti/BubbleWrap)

## Getting started

Copy this kit and edit the Rakefile for your application:

```ruby
Motion::Project::App.setup do |app|
  app.name = 'Your App'
  app.version = '0.0.1'
end
```

Then edit the app_delegate and change the PARSE_ID and PARSE_KEY:

```ruby
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
```

Now, you're ready to begin your new Parse-based application.

## Note

With RubyMotion 1.3 and below, the following changes need to be made to avoid a compile error.

Change line 38 of /Library/RubyMotion/lib/motion/project/vendor.rb from:

```ruby
source_files = (opts.delete(:source_files) or Dir.glob('*.{c,m,cpp,cxx,mm,h}')) 
```
to:

```ruby
source_files = (opts.delete(:source_files) or Dir.glob('**/*.{c,m,cpp,cxx,mm,h}'))
```

Documented on the [rubymotion google group](http://groups.google.com/group/rubymotion/msg/0efa74214523d0f5)

## Todo

Tests