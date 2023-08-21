<!DOCTYPE html>
<html>

<head>
	<title>
		Create a Search Bar using HTML and CSS
	</title>
	<meta name="viewport"
		content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
             body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
  }
  header {
    background-color: #5c52eb;
    color: #fff;
    padding: 10px 0;
    text-align: center;
  }
            /* styling navlist */
            #navlist {
                background-color: #0074D9;
                position: absolute;
                width: 100%;
                /* height: 10%; */
            }
                
            /* styling navlist anchor element */
            #navlist a {
                float:left;
                display: block;
                color: #f2f2f2;
                text-align: center;
                padding: 12px;
                text-decoration: none;
                font-size: 15px;
            }
            
            .navlist-right{
                float:right;
            }
        
            /* hover effect of navlist anchor element */
            #navlist a:hover {
                background-color: #ddd;
                color: black;
            }
                
            /* styling search bar */
            .search input[type=text]{
                width:300px;
                height:25px;
                border-radius:25px;
                border: none;
            }
                
            .search{
                float:right;
                margin:7px;
            }
                
            .search button{
                background-color: #0074D9;
                color: #f2f2f2;
                float: right;
                padding: 5px 10px;
                margin-right: 16px;
                font-size: 12px;
                border: none;
                cursor: pointer;
            }
            section {
    padding: 20px;
    margin: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }
  footer {
    background-color: #2a4a91;
    color: #fff;
    text-align: center;
    padding: 10px 0;
    position: absolute;
    bottom: 0;
    width: 100%;
  }
        </style>
        
    </head>

<body>
	<!-- Navbar items -->
    <header>
        <h1>Welcome </h1>
        <h3 style="text-align: end;">${name }&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h3>
      </header>
	<div id="navlist">
		<a href="Register.jsp">Register</a>
        <a href="fetchAll">FetchAll</a>
		<!-- search bar right align -->
		<div class="search">
           
			<form action="fetchById">
				<input type="text"
					placeholder=" Search"
					name="id">
				<button>
					<i class="fa fa-search"
					style="font-size: 18px;">
					</i>
				</button>
			</form>
		</div>
	</div>

	<!-- logo with tag -->
	<div class="content">
		<h1 style="color:green; padding-top:40px;">
			SCIENCE
		</h1>

		<b>
		
		</b>
		<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero repellendus est consequuntur necessitatibus, atque quas vitae, unde quia nihil nisi animi! Unde dolore veniam tempora ducimus omnis eius nobis quam.
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci nam maiores maxime doloribus, voluptatum id culpa aliquid suscipit est sunt molestiae commodi porro vel consequatur libero! Provident minima itaque officia.
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod iure animi consequuntur. Molestiae tempora officiis incidunt quos assumenda necessitatibus molestias. Et saepe mollitia eligendi sequi sit illo nulla porro modi.</p>
	</div>
    <footer>
        <p>&copy; .</p>
      </footer>
</body>

</html>
