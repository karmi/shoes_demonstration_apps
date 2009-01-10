_Shoes_ GUI Toolkit Demonstration Apps
======================================

A collection of small apps for demonstrating the features of [_Shoes_][shoes] GUI toolkit.

Suitable for presentation at lectures, user group meetings, etc.

1/ Shapes
---------

Basics: drawing shapes on screen. _Shoes_ as domain-specific language (DSL).


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

Subclassing `Shoes::Widget` extends _Shoes'_ DSL with our own methods. Handle `click` and `release`.


6/ Layout
---------

Inspiration in HTML.


7/ Interface
------------

Forms are as easy in _Shoes_ as in HTML.


8/ Live Interface
-----------------

Let's send the form data to a _Rails_ application running at `http://localhost:3000` and display the response status. See the simple _Rails_ app in `rails_people` directory.


9/ Uploader
-----------

A bit more complex example: a simple "uploader" sending one or more files with `Net::HTTP` to a [_Sinatra_][sinatra] application (see `sinatra_upload_service.rb`), which receives files and saves them to `uploads` directory. Demonstrates more complex interface, working with progress bars in _Shoes_, using _threads_. (Obviously, in real world application you would do multipart requests, proxy the uploading webservice, etc.)


---

Released under MIT license. Use anything in whatever manner you like.


[shoes]:          http://www.shoooes.net
[sinatra]:        http://sinatra.rubyforge.org/