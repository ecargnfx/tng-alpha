# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# CREATE TYPES
marketing = Type.create(name: 'marketing')
blog_post = Type.create(name: 'blog-post')
contact_page = Type.create(name: 'contact')
landing = Type.create(name: 'landing')
login_page = Type.create(name: 'login')
ecommerce = Type.create(name: 'ecommerce')

# CREATE COMPONENTS
nav = Component.create(name: 'nav', content: '<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand editable" href="#">Project name</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#" class="editable">Home</a></li>
            <li class=""><a href="#about" class="editable">About</a></li>
            <li class=""><a href="#contact" class="editable">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>')

jumbotron = Component.create(name: 'jumbotron', content: '<div class="jumbotron">
        <h1 class="editable">Look at me.</h1>
        <p class="editable">Your description goes here. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
        <p class="editable">Interested? Find out more!</p>
        <p class="editable">
          <a class="btn btn-lg btn-primary" href="../../components/#navbar">More info »</a>
        </p>
      </div>')

footer = Component.create(name: 'footer', content: '<div class="container" style="padding-bottom:100px">
    </div><footer align="center">
        <p class="editable">© 2013 Company, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
    </footer>')

column = Component.create(name: 'column', content: '<div class="col-lg-4">
          <h2 class="editable">Heading</h2>
          <p class="editable">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p class="editable"><a class="btn btn-primary" href="#">View details »</a></p>
        </div>')

login = Component.create(name: 'login', content: '<div class="container">

      <form class="form-signin" style="max-width: 330px; padding: 15px; margin: 0 auto">
        <h2 class="form-signin-heading editable">Please sign in</h2>
        <input type="text" class="form-control" placeholder="Email address" style="margin-bottom: -1px; border-bottom-left-radius: 0; border-bottom-right-radius: 0;" autofocus="">
        <input type="password" class="form-control" placeholder="Password" style="margin-bottom: 10px; border-top-left-radius: 0; border-top-right-radius: 0;">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> <span class="editable">Remember me</span>
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div>')

notify_form = Component.create(name: 'notify-form', content: '<div class="container">

      <div class="row">

        <div class="col-lg-4">

        </div>

        <div class="col-lg-4" align="center">

      <form class="form-signin">
        <h2 class="form-signin-heading editable">Please enter your email</h2>
        <br>
        <input type="text" class="form-control" placeholder="Notify me when this launches!" autofocus="">
       <br>
        <button class="btn btn-lg btn-primary btn-block editable" type="submit">Notify me!</button>
      </form>

        </div>

        <div class="col-lg-4">

        </div>



</div>')

contact_form = Component.create(name: 'contact-form', content: '<div class="container">

      <div class="row">

        <div class="col-lg-4">

        </div>

        <div class="col-lg-4" align="center">

      <form class="form-signin">
        <h2 class="form-signin-heading editable">Enter your info</h2>
        <br>
        <input type="text" class="form-control" placeholder="Full name" autofocus>
       <br>
       <input type="text" class="form-control" placeholder="Email address">
       <br>
       <input type="text" class="form-control" placeholder="Your message">
       <br>
        <button class="btn btn-lg btn-primary btn-block editable" type="submit" ><span class="editable">Contact us!</span></button>
      </form>

        </div>

        <div class="col-lg-4">

        </div>


    </div>

    </div> <!-- /container -->

    <div class="container" style="padding-top:100px">
    </div>')
header = Component.create(name: 'header', content: '<div class="starter-template">
        <h1 class="editable">Example Header</h1>
<hr>
      </div>')

post = Component.create(name: 'blog-post', content: '<div class="container">
      <div class="row">
        <div class="col-lg-3">
          <h2 class="editable">First blog post</h2>
          <p class="lead editable">09/21/2013</p>
        </div>

        <div class="col-lg-9" style="padding-top:20px">
          <div class="media editable">
        <a class="pull-left editable" href="#">
          <img class="media-object editable" data-src="holder.js/64x64" alt="64x64" src="http://placehold.it/64x64" style="width: 64px; height: 64px;">
        </a>
        <div class="media-body editable">
          <h4 class="media-heading editable">Media heading</h4>
          Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. <a href="#"> Read more &gt; </a>
        </div>
      </div>
        </div>

        <div class="col-lg-1">
        </div>

      </div>
      <hr>
    </div>')

product_row = Component.create(name: 'product-row', content: '<div class="row" align="center">
        <div class="col-sm-6 col-md-3 editable">
          <div class="thumbnail">
            <img data-src="holder.js/300x200" alt="300x200" src="http://placehold.it/300x200" style="width: 300px; height: 200px;">
            <div class="caption">
              <h3 class="editable">Product name</h3>
              <h5 style="color:#8c8c8c" class="editable">$0.00</h5>
              <p class="editable">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p class="editable"><a href="#" class="btn btn-primary editable">Add to cart</a></p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 editable">
          <div class="thumbnail">
            <img data-src="holder.js/300x200" alt="300x200" src="http://placehold.it/300x200" style="width: 300px; height: 200px;">
            <div class="caption">
              <h3 class="editable">Product name</h3>
              <h5 style="color:#8c8c8c" class="editable">$0.00</h5>
              <p class="editable">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p class="editable"><a href="#" class="btn btn-primary editable">Add to cart</a></p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 editable">
          <div class="thumbnail">
            <img data-src="holder.js/300x200" alt="300x200" src="http://placehold.it/300x200" style="width: 300px; height: 200px;">
            <div class="caption">
              <h3 class="editable">Product name</h3>
              <h5 style="color:#8c8c8c" class="editable">$0.00</h5>
              <p class="editable">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p class="editable"><a href="#" class="btn btn-primary editable">Add to cart</a></p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 editable">
          <div class="thumbnail">
            <img data-src="holder.js/300x200" alt="300x200" src="http://placehold.it/300x200" style="width: 300px; height: 200px;">
            <div class="caption">
              <h3 class="editable">Product name</h3>
              <h5 style="color:#8c8c8c" class="editable">$0.00</h5>
              <p class="editable">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p class="editable"><a href="#" class="btn btn-primary editable">Add to cart</a></p>
            </div>
          </div>
        </div>
        
  
      </div>')
view_cart = Component.create(name: 'view-cart', content: '<div class="container" style="padding-top:30px">
        <div class="row">
          <div class="col-lg-4">
            
          </div>
          <div class="col-lg-4">
            <div class="well">
              <button type="button" class="btn btn-primary btn-lg btn-block editable">View Cart</button>
            </div>
          </div>
          <div class="col-lg-4">
            
          </div>
        </div>
      </div>')


## BUILD THE PAGES
marketing.add_component(1, nav.id)
marketing.add_component(2, jumbotron.id)
marketing.add_component(3, column.id)
marketing.add_component(4, column.id)
marketing.add_component(5, column.id)
marketing.add_component(6, footer.id)

blog_post.add_component(1, nav.id)
blog_post.add_component(2, jumbotron.id)
blog_post.add_component(3, post.id)
blog_post.add_component(4, post.id)
blog_post.add_component(5, post.id)
blog_post.add_component(6, footer.id)

contact_page.add_component(1, nav.id)
contact_page.add_component(2, header.id)
contact_page.add_component(3, contact_form.id)
contact_page.add_component(4, footer.id)

landing.add_component(1, jumbotron.id)
landing.add_component(2,  notify_form.id)

login_page.add_component(1, login.id)

ecommerce.add_component(1, nav.id)
ecommerce.add_component(2, header.id)
ecommerce.add_component(3, product_row.id)
ecommerce.add_component(4, view_cart.id)
ecommerce.add_component(5, footer.id)
