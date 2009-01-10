_Shoes_ GUI Toolkit Demonstration Apps
======================================

A collection of small apps for demonstrating the features of [_Shoes_][shoes] GUI toolkit.

Suitable for presentation at lectures, user group meetings, etc. Fits in under one hour .)

1/ Shapes
---------

Basics: drawing shapes on screen. _Shoes_ as domain-specific language (DSL).


2/ Shapes and Colors
--------------------

Drawing with colors. More DSL. Programming as inventing and implementing API.


3/ Animations
-------------

The `animate` method. Calculations. Programming as a "recipe".


4/ Interactivity
----------------

Basics: clicking invokes associated block. _Ruby_ + _Shoes_ = very, very succinct code.


5/ Interactivity with objects
-----------------------------

Subclassing `Shoes::Widget` extends _Shoes'_ DSL with our own methods. Work with sound. Handle `click` and `release`.


6/ Layout
---------

Inspiration: HTML.


7/ Interface
------------

Forms are as easy in _Shoes_ as in HTML. Very, very easy.


8/ Live Interface
-----------------

Let's send the form data to a _Rails_ application running at `http://localhost:3000` and display the response status. See the simple _Rails_ app in `rails_people` directory. Run with `script/server` to have an endpoint for _Shoes_ app.


9/ Uploader
-----------

Simple "uploader" sending one or more files with `Net::HTTP` to a [_Sinatra_][sinatra] application (see `sinatra_upload_service.rb`), which receives the files and saves them to `uploads` directory.

More complex interface, working with progress bars in _Shoes_, using _threads_. Run _Sinatra_ endpoint with `ruby sinatra_upload_service.rb`. Possible "homework": refactor the `upload` method.

(Obviously, in real world application you would do multipart requests, proxy the uploading webservice, etc. This is _not_ production code.)


---

Released under MIT license in 2009 by Karel Minarik. Use anything in whatever manner you like.


[shoes]:          http://www.shoooes.net
[sinatra]:        http://sinatra.rubyforge.org/