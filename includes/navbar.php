<header class="main-header">
  <nav class="navbar navbar-static-top">
    <div class="container">
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              
            </div>

      <div class="navbar-header">

        <a href="index.php" class="navbar-brand"><b>Land Records Management System-LAMIS</b></a>

        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
          <i class="fa fa-bars"></i>
        </button>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
        <ul class="nav navbar-nav">
          <li><a href="index.php">HOME</a></li>
          <li><a href="about.php">ABOUT US</a></li>
          <li><a href="contact.php">CONTACT US</a></li>
          
        </ul>
        <form method="POST" class="navbar-form navbar-left" action="search.php">
          <div class="input-group">
              <input type="text" class="form-control" id="navbar-search-input" name="keyword" placeholder="Quick  Search" required>
              <span class="input-group-btn" id="searchBtn" style="display:none;">
                  <button type="submit" class="btn btn-default btn-flat"><i class="fa fa-search"></i> </button>
              </span>
          </div>
        </form>
      </div>
      <!-- /.navbar-collapse -->
      <!-- Navbar Right Menu -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="http://localhost/lamis/users/">Quick Land Search </a>
                    </li>
                  
            </div>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
         <li>
                        <a href="http://localhost/lamis/users/">Users Portal</a>
                    </li>
                    <li>
                        <a href="http://localhost/lamis/staff/">Staff Portal</a>
                    </li>
                    <li>
                        <a href="http://localhost/lamis/admin/">Admin Portal</a>
                    </li>
                
       
        </ul>
      </div>
    </div>
  </nav>
</header>