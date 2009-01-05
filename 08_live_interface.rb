# http://help.shoooes.net/EditLine.html
# http://help.shoooes.net/ListBox.html

require 'net/http'
require 'uri'
require 'cgi'

Shoes.app :width => 350, :height => 400 do

  background "#EFC"
  border "#BE8", :strokewidth => 6

  style(Shoes::Para, :stroke => "#14190e")
  LABEL_STYLE = { :margin_bottom => 2 }
  INPUT_STYLE = { :margin_bottom => 10 }

  stack do
    background "#BE8"
    subtitle "Interface in Shoes", :stroke => '#14190e', :margin_left => 13
  end

  @params = {}

  stack(:margin => 12) do

    para( "Your name", LABEL_STYLE)
    @params[:name] = edit_line(INPUT_STYLE)

    para( "Your surname", LABEL_STYLE)
    @params[:surname] = edit_line(INPUT_STYLE)

    para( "Where do you live", LABEL_STYLE)
    @params[:residence] = list_box( INPUT_STYLE.merge :items => ['Earth', 'Mars', 'Venus'])

    button "Send!", :margin_top => 10 do

      stack do
      # ----------------------------------------------------------------------------------------------------------------
      @status = inscription "Sending data...", :margin => 10

      post_data = ''
      @params.each { |key, value| post_data << "person[#{key}]" + '=' + CGI.escape(value.text) + '&' }

      @d = download("http://localhost:3000/people",
                    :method => 'POST',
                    :body   => post_data) { |upload| @status.text  = 'Received: ' + upload.response.headers['Status'] }
      # ----------------------------------------------------------------------------------------------------------------
      end
    end
  end

end
