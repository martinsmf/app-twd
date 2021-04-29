class HomeComponents
  def burger
    return find_element(xpath: "//android.widget.ImageButton[@content-desc='Open navigation drawer']")
  end
end
