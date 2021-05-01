class HomeScreen
  attr_accessor :home_page

  def initialize
    @home_components = HomeComponents.new
  end

  def tep_hamburger
    @home_components.burger.click
  end
end
