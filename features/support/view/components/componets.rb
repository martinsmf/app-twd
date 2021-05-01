class Navigator
  def tap_by_text(target)
    return find_element(xpath: "//androidx.recyclerview.widget.RecyclerView//*[@text='#{target}']").click
    # return find_element(xpath: "//*[@text='#{target}']")
  end

  def menu
    return find_element(id: "io.qaninja.android.twp:id/rvNavigation")
  end
end
