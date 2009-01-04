require 'rubygems'
require 'sinatra'
require 'mime/types'
require 'fileutils'

FileUtils.mkdir_p File.join( File.dirname(__FILE__), 'uploads' )

get '/' do
  header 'Content-Type' => 'text/plain; charset=UTF-8'
  Dir['uploads/*.*'].
  collect { |file| '* ' + File.basename(file) + " (#{MIME::Types.type_for(file)}, #{File.size(file)} B)" }.
  join("\n")
end

post '/' do
  File.open( File.join(File.dirname(__FILE__), 'uploads', params[:filename]), 'w') do |file|
    file <<  params[:raw_data]
  end
  puts "* '#{params[:filename]}' uploaded"
  "#{params[:filename]} OK :)"
end
