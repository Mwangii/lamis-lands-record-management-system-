<?php 
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{
if(isset($_POST['submit1']))
{
$uid=$_SESSION['id'];
$sach=$_POST['sach'];

}









?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>LAMIS| Complaint History</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <link href="assets/css/table-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
<?php include("includes/header.php");?>
<?php include("includes/sidebar.php");?>

      <section id="main-content">
          <section class="wrapper">
            <br>
                      <form class="form-horizontal style-form" method="post" name="chngpwd" onSubmit="return valid();">
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Title Number /Property Number/LR Number </label>
                              <div class="col-sm-10">
                                  <input type="text" name="sach"   placeholder="Enter Title Number /Property Number/LR Number" required="required" class="form-control">
                              </div>
                          </div>

                          <div class="form-group">
                             
                           <div class="col-sm-10" style="padding-left:25% ">
<button type="submit" name="submit1" class="btn btn-primary">Search</button>
</div>
</div>

                          </form>
          	<h3><i class="fa fa-angle-right"></i>Land /Property Records</h3>
		  		<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                          <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                              <thead>
                              <tr>
                                  <th>Title/Plot Number</th>
                                  <th>Names</th>
                                  <th>Approx Area in Ha.</th>
                                  <th>Date of Registration</th>
                                  <th>Action</th>
                                  
                              </tr>
                              </thead>
                              <tbody>
  <?php 


  $query=mysqli_query($con,"select * from pic where titleNo='$sach'");

  /////////////////////
  //////////////////
while($row=mysqli_fetch_array($query))
{
  ?>
                              <tr>
                                  <td align="center"><?php echo htmlentities($row['titleNo']);?></td>
                                  <td align="center"><?php echo htmlentities($row['name']);?></td>
                                 <td align="center"><?php echo  htmlentities($row['area']); ?></td>
                                 <td align="center"><?php echo  htmlentities($row['postingDate']); ?></td>
            
                                   <td align="center">
                                   <a href="more.php?cid=<?php echo htmlentities($row['titleNo']);?>">
<button type="button" class="btn btn-primary">View More</button></a>
                                   </td>
                                </tr>
                              <?php } ?>
                            
                              </tbody>
                          </table>
                          </section>
                  </div><!-- /content-panel -->
               </div><!-- /col-lg-4 -->			
		  	</div><!-- /row -->
		  	
		  	

		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->
<?php include("includes/footer.php");?>
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    

  </body>
</html>
<?php } ?>
