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
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>')

jumbotron = Component.create(name: 'jumbotron', content: '<div class="jumbotron">
        <h1>Look at me.</h1>
        <p>Your description goes here. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
        <p>Interested? Find out more!</p>
        <p>
          <a class="btn btn-lg btn-primary" href="../../components/#navbar">More info »</a>
        </p>
      </div>')

footer = Component.create(name: 'footer', content: '<div class="container" style="padding-bottom:100px">
    </div><footer align="center">
        <p>© 2013 Company, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
    </footer>')

column = Component.create(name: 'column', content: '<div class="col-lg-4">
          <h2>Heading</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-primary" href="#">View details »</a></p>
        </div>')

login = Component.create(name: 'login', content: '<div class="container">

      <form class="form-signin" style="max-width: 330px; padding: 15px; margin: 0 auto">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="form-control" placeholder="Email address" style="margin-bottom: -1px; border-bottom-left-radius: 0; border-bottom-right-radius: 0;" autofocus="">
        <input type="password" class="form-control" placeholder="Password" style="margin-bottom: 10px; border-top-left-radius: 0; border-top-right-radius: 0;">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
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
        <h2 class="form-signin-heading">Please enter your email</h2>
        <br>
        <input type="text" class="form-control" placeholder="Notify me when this launches!" autofocus="">
       <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Notify me!</button>
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
        <h2 class="form-signin-heading">Enter your info</h2>
        <br>
        <input type="text" class="form-control" placeholder="Full name" autofocus>
       <br>
       <input type="text" class="form-control" placeholder="Email address">
       <br>
       <input type="text" class="form-control" placeholder="Your message">
       <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit" >Contact us!</button>
      </form>

        </div>

        <div class="col-lg-4">

        </div>


    </div>

    </div> <!-- /container -->

    <div class="container" style="padding-top:100px">
    </div>')
header = Component.create(name: 'header', content: '<div class="starter-template">
        <h1>Example Header</h1>
<hr>
      </div>')

post = Component.create(name: 'blog-post', content: '<div class="container">
      <div class="row">
        <div class="col-lg-3">
          <h2>First blog post</h2>
          <p class="lead">09/21/2013</p>
        </div>

        <div class="col-lg-9" style="padding-top:20px">
          <div class="media">
        <a class="pull-left" href="#">
          <img class="media-object" data-src="holder.js/64x64" alt="64x64" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAACsUlEQVR4Xu2Y24upYRTGl0PI0JSimHDjMIVETVMzpvzrziLSTIkiLpTcjJLzcfaziuz2Njufsb8La93o+3jX+65nHX55NZ+fnzu6YdOIAFIB0gIyA254BpIMQaGAUEAoIBQQCtywAoJBwaBgUDAoGLxhCMifIcGgYFAwKBgUDAoGb1iBizHYbDap3+/Tbrcjp9NJwWCQNBrNQdJflKF6vU5ms5lisdhv353S/Ro+T+11kQCNRoN6vR7p9Xr2v16vyev1kt/v52eIkkql+L3BYKBEIkFarfbberuGz+82VCzAZrOhdDrNGX17e6PVakXdbpesVis9PDzwnq1Wi9/BTCYTvb6+0mQyoff3d9LpdBSPx2k8HhOCNhqNFIlEKJvNnu3zuOLO7WbFAiyXSz7sdrvloOfzObdAIBDgM8xmM8rlcuTxeGg0GtF0OmWhcNhKpULD4ZBsNhuvw3eoGqxX6vPcwPe/VywAertarbIftADKHIYgQqEQB4nAk8kklUolWiwWBwGOxcOa+/t7enp6okt8/ncBkOF8Ps+l+/LywlksFovc6+FwmMW5u7sjt9tN7XabK8Xn8/EzrNPp8HvY8/MzV9GlPpWIoLgCkHHMAPQ2BNg/Q4DHx0eq1Wp/nAcDEBWB4ZjJZA5VY7fbKRqNHnwo8fmv4XpKHMUCIAhUALLmcrn4E33tcDi4AlDmMBysXC5zcMg0gvv4+KDBYEAWi4UrB9WBAYi1Sn0qyT7WKBYAizHACoUCgQgwtAN6GUEeG1oDAoACmAsQZE8PCAHuY47saXKuT1UocBwgUAZDRn/KruHzb2e7qAJ+Klg1/YgAciMkN0JyIyQ3QmpOYbX3FgoIBYQCQgGhgNqTWM39hQJCAaGAUEAooOYUVntvoYBQQCggFBAKqD2J1dxfKHDrFPgCDLCNn09hb34AAAAASUVORK5CYII=" style="width: 64px; height: 64px;">
        </a>
        <div class="media-body">
          <h4 class="media-heading">Media heading</h4>
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
        <div class="col-sm-6 col-md-3">
          <div class="thumbnail">
            <img data-src="holder.js/300x200" alt="300x200" src="data:image/png;base64,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" style="width: 300px; height: 200px;">
            <div class="caption">
              <h3>Product name</h3>
              <h5 style="color:#8c8c8c">$0.00</h5>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a href="#" class="btn btn-primary">Add to cart</a></p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="thumbnail">
            <img data-src="holder.js/300x200" alt="300x200" src="data:image/png;base64,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" style="width: 300px; height: 200px;">
            <div class="caption">
              <h3>Product name</h3>
                            <h5 style="color:#8c8c8c">$0.00</h5>

              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a href="#" class="btn btn-primary">Add to cart</a> </p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="thumbnail">
            <img data-src="holder.js/300x200" alt="300x200" src="data:image/png;base64,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" style="width: 300px; height: 200px;">
            <div class="caption">
              <h3>Product name</h3>
                            <h5 style="color:#8c8c8c">$0.00</h5>

              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a href="#" class="btn btn-primary">Add to cart</a> </p>
            </div>
          </div>
        </div>


      <div class="col-sm-6 col-md-3">
          <div class="thumbnail">
            <img data-src="holder.js/300x200" alt="300x200" src="data:image/png;base64,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" style="width: 300px; height: 200px;">
            <div class="caption">
              <h3>Product name</h3>
                            <h5 style="color:#8c8c8c">$0.00</h5>

              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a href="#" class="btn btn-primary">Add to cart</a> </p>
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
              <button type="button" class="btn btn-primary btn-lg btn-block">View Cart</button>
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
