# http://help.shoooes.net/Art.html
# http://help.shoooes.net/Colors.html

Shoes.app :width => 600, :height => 400 do

  background gradient('fff', red)
  border black, :strokewidth => 6

  fill crimson
  nostroke
  oval :left => 50, :top => 150, :radius => 50

  rect :left   => 200,
       :top    => 100,
       :width  => 100,
       :height => 200,
       :curve => 10,
       :fill   => blue..white,
       :stroke => cornflowerblue
  
  stroke rgb(82, 138, 150)
  star 450, 200, 100, 100, 90, :fill => "#{DIR}/static/stripe.png"
  
end