# http://help.shoooes.net/Art.html
# http://help.shoooes.net/Colors.html

Shoes.app do

  background white
  border black, :strokewidth => 6

  @shape_one = image 'letters/a.jpg', :left => width/2, :top => 100
  @shape_two = image 'letters/z.jpg', :left => width/2, :top => 300

  direction_one, direction_two = 6, 6
  animate(25) do |frame|

    @shape_one.move(@shape_one.left+direction_one, @shape_one.top)
    @shape_one.rotate(-10)
    direction_one =  6  if @shape_one.left <= 6
    direction_one = -6 if (@shape_one.left + @shape_one.width - 6) > width

    @shape_two.move(@shape_two.left+direction_two, @shape_two.top)
    @shape_two.rotate(-10)
    direction_two =  6  if @shape_two.left <= 6
    direction_two = -6 if (@shape_two.left + @shape_two.width - 6) > width

  end

end