require 'net/http'
require 'uri'

class Uploader
  URL = 'http://127.0.0.1:4567/'
  def self.post(file)
    Net::HTTP.post_form( URI.parse(URL), { 'filename' => File.basename(file), 'raw_data' => File.read(file)} )
  end
end

Shoes.app :width => 600, :height => 350 do

  @files_total    = []
  @files_uploaded = []

  def upload(path)
    @files_total << path
    @output.stack { @status = inscription "• Uploading file #{File.basename(path)} (#{File.size(path)/1024} KB)" }
    @progress_info.text = "#{@files_uploaded.size} of #{@files_total.size} uploaded"
    @progress_bar.fraction += 0.01
    status = @status # Baaaaaa :P
    Thread.new(status) do
      response = Uploader.post( path )
      status.text  += ' : ' + response.message
      status.style(:weight =>'bold', :stroke => (response.code == '200' ? black : crimson) )
      @files_uploaded << path
      @progress_info.text = "#{@files_uploaded.size} of #{@files_total.size} uploaded"
      @progress_bar.fraction = (@files_uploaded.size.to_f / @files_total.size.to_f)
    end
  end

  background white
  border black, :strokewidth => 4

  # == Header
  stack do
    background black
    title 'Shoeploader', :stroke => white, :font => "Coolvetica", :margin => [15, 10, 4, 0]
    para( 'For Sinatra!', :stroke => "#999999", :margin => [15, 0, 0, 0]).displace(0, -8)
    background "rgb(66, 66, 66, 180)".."rgb(0, 0, 0, 0)",       :height => 0.5
    background "rgb(66, 66, 66, 100)".."rgb(255, 255, 255, 0)", :height => 20, :bottom => 0
  end

  stack :margin => [15, 20, 15, 15] do

    background '#e5edf8', :curve => 10
  
    flow do

      button("Upload file") { upload(ask_open_file) }

      button("Upload directory") do
        directory = ask_open_folder
        Dir.entries(directory).reject {|f| f =~ /^\.(.*)/}.each { |file| upload( File.join(directory, file) ) }
      end

      button("Clear") { @output.clear }

    end

    flow :margin => [5, 0, 0, 0] do
      @progress_bar  = progress :width => 100, :margin => [0, 3, 0, 0]
      @progress_info = inscription "#{@files_uploaded.size} of #{@files_total.size} uploaded"
    end

    @output = stack :margin => 5 do
      background '#edf2f7', :curve => 10
    end

  end

end
