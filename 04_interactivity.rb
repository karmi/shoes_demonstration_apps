Shoes.app :width => 750, :height => 580 do

  background white
  border black, :strokewidth => 6

  @letters = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z}

  flow(:margin => 10) do

    @shapes = @letters.each do |l|

      shape = image("letters/#{l}.jpg") { `say '#{l}'` }

    end
  end

end