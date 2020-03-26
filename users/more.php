<?php session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{ ?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>LAMIS | More Details</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
  </head>

  <body>

  <section id="container" >
<?php include('includes/header.php');?>
<?php include('includes/sidebar.php');?>
      <section id="main-content">
          <section class="wrapper site-min-height">
          	<h3><i class="fa fa-angle-right"></i> Records Details</h3>
            <hr />

 <?php $query=mysqli_query($con,"select * from pic where titleNo='".$_GET['cid']."'");
while($row=mysqli_fetch_array($query))
{?>
         	<div class="row mt">
            <label class="col-sm-2 col-sm-2 control-label"><b>Title Number/Plot Number : </b></label>
          		<div class="col-sm-4">
          		<p><?php echo htmlentities($row['titleNo']);?></p>
          		</div>
<label class="col-sm-2 col-sm-2 control-label"><b>Approx Area(Ha.) :</b></label>
              <div class="col-sm-4">
              <p><?php echo htmlentities($row['area']);?></p>
              </div>
          	</div>


  <div class="row mt">
            <label class="col-sm-2 col-sm-2 control-label"><b>Map Sheet Coordinates :</b></label>
              <div class="col-sm-4">
              <p><?php echo htmlentities($row['map']);?></p>
              </div>
<label class="col-sm-2 col-sm-2 control-label"><b>Earth Coordinates :</b></label>
              <div class="col-sm-4">
              <p><?php echo htmlentities($row['coord']);?></p>
              </div>
            </div>  



  <div class="row mt">
            <label class="col-sm-2 col-sm-2 control-label"><b>Owners Names :</b></label>
              <div class="col-sm-4">
              <p><?php echo htmlentities($row['name']);?></p>
              </div>
<label class="col-sm-2 col-sm-2 control-label"><b>Scanned Title Copy :</b></label>
              <div class="col-sm-4">
              <p><?php $cfile=$row['cFile'];
if($cfile=="" || $cfile=="NULL")
{
  echo htmlentities("File NA");
}
else{ ?>
<a href="../staff/compdocs/<?php echo htmlentities($row['cFile']);?>" target='_blank'> View File</a>
<?php } ?>

              </p>
              </div>
            </div> 
 <div class="row mt">
            <label class="col-sm-2 col-sm-2 control-label"><b>Date of Registration </label>
              <div class="col-sm-10">
              <p><?php echo htmlentities($row['postingDate']);?></p>
              </div>

            </div> 
             <div class="row mt">
            <label class="col-sm-2 col-sm-2 control-label"><b>Last Date of Transfer  </label>
              <div class="col-sm-10">
              <p><?php echo htmlentities($row['updationDate']);?></p>
              </div>

            </div> 




<?php 
$ret=mysqli_query($con,"select complaintremark.remark as remark,complaintremark.status as sstatus,complaintremark.remarkDate as rdate from complaintremark join tblcomplaints on tblcomplaints.complaintNumber=complaintremark.complaintNumber where complaintremark.complaintNumber='".$_GET['cid']."'");
while($rw=mysqli_fetch_array($ret))
{
?>
 <div class="row mt">
            
<label class="col-sm-2 col-sm-2 control-label"><b>Remark:</b></label>
              <div class="col-sm-10">
   <?php echo  htmlentities($rw['remark']); ?>&nbsp;&nbsp; <b>Remark Date: <?php echo  htmlentities($rw['rdate']); ?></b>
              </div>
            </div> 
 <div class="row mt">
            
<label class="col-sm-2 col-sm-2 control-label"><b>Status:</b></label>
              <div class="col-sm-10">
 <?php echo  htmlentities($rw['sstatus']); ?>
              </div>
            </div>

<?php } ?>

 <div class="row mt">
            
<label class="col-sm-2 col-sm-2 control-label"><b>Application Requests :</b></label>
              <div class="col-sm-4">
              <p style="color:red"><?php 

if($row['status']=="NULL" || $row['status']=="" )
{
echo "No application requests";
} else{
              echo htmlentities($row['status']);
}
              ?></p>
              </div>
            </div> 
            




<?php } ?>
		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->
<?php include('includes/footer.php');?>
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="assets/js/jquery.ui.touch-punch.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
<?php } ?>
