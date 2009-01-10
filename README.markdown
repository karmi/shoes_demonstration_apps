_Shoes_ GUI Toolkit Demonstration Apps
======================================

A collection of small apps for demonstrating the features of [_Shoes_][shoes] GUI toolkit.

Suitable for presentation at lectures, user group meetings, etc.

1/ Shapes
---------

Basics: drawing shapes on screen. Shoes as domain-specific language.


2/ Shapes and Colors
--------------------

Drawing with colors. More DSL.


3/ Animations
-------------

The `animate` method. Calculations.


4/ Interactivity
----------------

Basics: clicking invokes associated block.


5/ Interactivity with objects
-----------------------------

Subclassing `Shoes::Widget` extends _Shoes'_ DSL. 


6/ Layout
---------

Inspiration in HTML.


7/ Interface
------------

Forms are as easy in _Shoes_ as in HTML.


8/ Live Interface
-----------------

Let's send the data to a _Rails_ application running at `http://localhost:3000` and read the status. See the simple _Rails_ app in `rails_people` directory.


9/ Uploader
-----------

More complex example: a simple "uploader" sending one or more files with `Net::HTTP` to a [_Sinatra_][sinatra] application (see `sinatra_upload_service.rb`), which receives files and saves them to `uploads` directory. Demonstrates more complex interface, working with progress bars in Shoes, using _threads_.

---

Released under MIT license


[shoes]:          http://www.shoooes.net
[sinatra]:        http://sinatra.rubyforge.org/