class AvengersComponents
  def btn_remove
    return find_element(id: "io.qaninja.android.twp:id/btnRemove")
  end

  def snackbar
    return find_element(id: "io.qaninja.android.twp:id/snackbar_text")
  end
end
