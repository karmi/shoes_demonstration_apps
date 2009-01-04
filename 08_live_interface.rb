# http://help.shoooes.net/EditLine.html
# http://help.shoooes.net/ListBox.html

require 'net/http'
require 'uri'
require 'cgi'

Shoes.app :width => 350, :height => 400 do

  background "#EFC"
  border "#BE8", :strokewidth => 6

  stack do
    background "#BE8"
    subtitle "Interface in Shoes"
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
