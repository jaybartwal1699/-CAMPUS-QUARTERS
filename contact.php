<?php
include("header.php");
?>
	

	<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>
		<style>
        body {
  background: #c9d6ff; /* fallback for old browsers */
  background: -webkit-linear-gradient(
    to bottom,
    #e2e2e2,
    #c9d6ff
  ); /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to bottom, #e2e2e2, #c9d6ff) no-repeat fixed; /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

.bg {
  background: url("https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-371678.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  background-position: top center;

  padding-bottom: 100%;
}

.frame {
  background-color: #fff;
}

.padded {
  padding: 0 2rem;
}

.level.fill-height {
  -webkit-box-align: stretch;
  -ms-flex-align: stretch;
  align-items: stretch;
  display: -ms-flexbox;
  display: flex;
}

.col-6:first-child {
  padding-left: 0;
}

.col-6:last-child {
  padding-right: 0;
}

ul {
  display: flex;
  list-style: none;
}

li {
  padding: 0 0.5rem;
}

.btn-info {
  margin-left: 1rem;
}
</style>
	</head>
	<body>
	<!--
    This awesome pen was built with Cirrus CSS! Check it out at https://github.com/Spiderpig86/Cirrus!

       _______                     
      / ____(_)___________  _______
     / /   / / ___/ ___/ / / / ___/
    / /___/ / /  / /  / /_/ (__  ) 
    \____/_/_/  /_/   \__,_/____/  
                        
    Happy coding. :)
-->

<!DOCTYPE html>
<html>
    <head>
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"
        />
        <meta charset="UTF-8" />
        <title>Contact Us</title>

        <link
            href="https://unpkg.com/cirrus-ui"
            type="text/css"
            rel="stylesheet"
        />

        <link
            href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700"
            rel="stylesheet"
        />
        <link
            href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
            rel="stylesheet"
        />
        <link
            href="https://fonts.googleapis.com/css?family=Oswald"
            rel="stylesheet"
        />

        <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
            integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
            crossorigin="anonymous"
        />
      
        <script
            src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"
        ></script>
    </head>

    <body>
        <div class="hero fullscreen">
            <div class="hero-body">
                <div style="margin: auto">
                    <form class="frame p-0" method="post">
                        <div class="frame__body p-0">
                            <div class="row p-0 level fill-height">
                                <div class="col">
                                    <div class="space xlarge"></div>
                                    <div class="padded">
                                        <h1 class="u-text-center u-font-alt">Contact Us</h1>
                                        <div class="divider"></div>
                                        <p class="u-text-center">Interested in reserving a spot at our hostel? Fill out the form below, and we'll ensure a comfortable stay at our campus quarters site!</p>
                                        <div class="divider"></div>

                                        <div class="form-group">
                                            <label class="form-group-label">
                                                <span class="icon">
                                                    <i class="fa-wrapper far fa-user"></i>
                                                </span>
                                            </label>
                                            <input type="text" class="form-group-input" placeholder="Enter your name" />
                                        </div>

                                        <div class="form-group">
                                            <label class="form-group-label">
                                                <span class="icon">
                                                    <i class="fa-wrapper far fa-envelope"></i>
                                                </span>
                                            </label>
                                            <input type="email" class="form-group-input" placeholder="Enter your email" />
                                        </div>

                                        <div class="form-section section-inline">
                                            <div class="section-body row">
                                                <div class="form-group col-6 pl-0">
                                                    <label class="form-group-label">
                                                        <span class="icon">
                                                            <i class="fa-wrapper far fa-calendar"></i>
                                                        </span>
                                                    </label>
                                                    <input type="date" class="form-group-input" placeholder="Enter your birthday (or not)" />
                                                </div>
                                                <div class="form-group col-6 pr-0">
                                                    <label class="form-group-label">
                                                        <span class="icon">
                                                            <i class="fa-wrapper fas fa-list"></i>
                                                        </span>
                                                    </label>
                                                    <select class="select form-group-input" placeholder="Choose one">
                                                        <option>Report FeedBack</option>
                                                        <option>Room equpiment Service</option>
                                                        <option>Other</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <textarea placeholder="Tell us what's wrong"></textarea>

                                        <div class="form-ext-control form-ext-checkbox">
                                            <input id="check1" class="form-ext-input" type="checkbox">
                                            <label class="form-ext-label" for="check1">Send me a copy.</label>
                                        </div>

                                        <div class="space"></div>

                                        <div class="btn-group u-pull-right">
                                            <button class="btn-info">Send</button>
                                        </div>

                                    </div>
                                    <div class="space xlarge"></div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

	</body>
	</html>

	<?php
	include("footer.php");
	?>