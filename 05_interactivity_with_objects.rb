# Draw draggable letter on canvas
# Instantiate with <tt>letter('a')</tt>
# 
class Shoes::Letter < Shoes::Widget

  def initialize(l)
    @letter = l
    @shape = image("letters/#{l}.jpg").click { |shape| handle_click }.release { |button, top, left| handle_release }
  end

  private

  def handle_click
    @dragging = true
    motion do |top, left|
      move(top-@shape.height/2, left-@shape.width/2) if @dragging
    end
  end

  def handle_release
    @dragging = false
  end
  
end

Shoes.app :width => 800, :height => 600 do

  background white
  border black, :strokewidth => 6

  stack do 
    background black

    @sound = video 'assets/drumfill.aif', :width => 0, :height => 0
    
    flow do
      letters_to_spell = edit_line
      button "Spell" do
        @canvas.clear
        flow {     letters_to_spell.text.split('').each { |l| @canvas.letter(l) }     }
        @sound.play
      end
    end

  end

  @canvas = stack do
    background white

    %w{a b c d e f g h i j k l m n o p q r s t u v w x y z}.each do |l|
      letter(l).move(rand(width), rand(height))
    end

  end

end