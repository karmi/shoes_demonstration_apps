# http://help.shoooes.net/EditLine.html
# http://help.shoooes.net/ListBox.html

Shoes.app :width => 350, :height => 400 do

  background "#EFC"
  border "#BE8", :strokewidth => 6

  stack do
    background "#BE8"
    subtitle "Interface in Shoes", :margin_left => 13
  end

  @params = {}

  stack(:margin => 12) do

    para "Your name"
    @params[:name] = edit_line

    para "Your surname"
    @params[:surname] = edit_line

    para "Where do you live"
    @params[:residence] = list_box :items => ['Earth', 'Mars', 'Venus']

    button "Send!", :margin_top => 10 do
      msg = "Thanks! You've sent this:\n\n"
      @params.each { |key, value| msg << key.to_s.capitalize + ': ' + value.text + "\n" }
      alert msg
    end

  end

end
