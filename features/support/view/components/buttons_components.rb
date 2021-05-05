class ButtonComponentes
  def button_click_simples
    return find_element(:id, "io.qaninja.android.twp:id/short_click")
  end

  def button_click_longo
    return find_element(:id, "io.qaninja.android.twp:id/long_click")
  end
end
