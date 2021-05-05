class AvengersScreen
  def initialize
    @avengers_components = AvengersComponents.new
  end

  def swipe
    find_element(:id, "io.qaninja.android.twp:id/rvList")
    coord = { start_x: 0.93, start_y: 0.18, offset_x: 0.48, offset_y: 0.18, duration: 2000 }
    Appium::TouchAction.new.swipe(coord).perform
    sleep 5
  end

  def remov_hero
    @avengers_components.btn_remove.click
  end
end
