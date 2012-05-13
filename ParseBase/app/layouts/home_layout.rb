class HomeLayout
  include Layouts::Base

  def self.template
    UIBarButtonItem {
      id 'facebookButton'
      delegate @controller
      top 90
      width 85.percent
      align 'center'
      text_color '222222'
      background_color 'FFFFFF'
      border_style 'rounded'
      resize :top, :right, :left, :width
      placeholder 'Log in with Facebook'
    }
  end
end