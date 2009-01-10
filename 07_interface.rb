# http://help.shoooes.net/EditLine.html
# http://help.shoooes.net/ListBox.html

Shoes.app :width => 350, :height => 400 do

  background "#EFC"
  border "#BE8", :strokewidth => 6

  style(Shoes::Para, :stroke => "#14190e")
  LABEL_STYLE = { :margin_bottom => 2 }
  INPUT_STYLE = { :margin_bottom => 10 }

  stack do
    background "#BE8"
    subtitle "Interface in Shoes", :stroke => '#14190e', :margin => [5, 10, 20, 10]
  end

  @params = {}

  stack(:margin => 12) do

    para( "Your name", LABEL_STYLE)
    @params[:name] = edit_line(INPUT_STYLE)

    para( "Your surname", LABEL_STYLE)
    @params[:surname] = edit_line(INPUT_STYLE)

    para( "Where do you live", LABEL_STYLE)
    @params[:residence] = list_box( INPUT_STYLE.merge :items => ['Earth', 'Mars', 'Venus'])

    button "Send!", :margin_top => 12 do
      msg = "Thanks! You've sent this:\n\n"
      @params.each { |key, value| msg << key.to_s.capitalize + ': ' + value.text + "\n" }
      alert msg
    end

  end

end
