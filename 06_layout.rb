# http://help.shoooes.net/Slots.html

Shoes.app :width => 600, :height => 310 do
  
  stack do
    background black
    title "Layout with Shoes", :stroke => white
  end

  stack do
    background greenyellow
    para "I am stack one!"
  end

  stack do
    background mediumspringgreen
    para "And I am stack two!"
    para "I have two paragraphs!"
  end

  stack do 

    background lightskyblue

    para "And here comes stack three..."

    flow(:margin => 5, :stroke => white) do
      background lightcyan
      para      "We"
      para      "can"
      button    "also"
      check
      para "float"
      edit_line "elements!"
    end

    inscription "(so to speak)"

  end

  stack do
    background black
    inscription "And that is all, folks!", :stroke => white
  end

end
