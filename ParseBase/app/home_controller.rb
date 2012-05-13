class HomeController < UIViewController
  def viewWillAppear(animated)
    super

    # Create a record
    u = User.new
    u.name = "Jamie van Dyke"
    p.saveEventually

    # Query a record
    query = PFQuery.queryWithClassName("User")
    query.whereKey("name", equalTo:"Jamie van Dyke")
    results = query.findObjects

    results.map! {|result| User.new(result)}

    alert = UIAlertView.new
    alert.message = "Parse example"
    alert.show
  end
end