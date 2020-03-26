<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{

if(isset($_POST['submit']))
{
$uid=$_SESSION['id'];
$mail=$_SESSION['email'];
$title=$_POST['title'];
$transfertype=$_POST['transfertype'];
$state=$_POST['state'];
$valuer=$_POST['valuer'];
$advocate=$_POST['advocate'];
$county=$_POST['county'];
$compfile=$_FILES["compfile"]["name"];

///////////////
///////////


//move_uploaded_file($_FILES["compfile"]["tmp_name"],"transferdocs/".$_FILES["compfile"]["name"]);

       $result =mysqli_query($con,"SELECT titleNo FROM pic WHERE titleNo='$title'");
       $cow=mysqli_num_rows($result);
       $resultt =mysqli_query($con,"SELECT titleNumber FROM transfer WHERE titleNumber='$title'");
        $count=mysqli_num_rows($resultt);


        if(!$cow>0){
                  echo "<span style='color:red'> Sorry Invalid Title Deed Number </span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";

          } 
  else if($count>0){

echo "<span style='color:red'> Sorry a request has  already  been submitted with that title Number</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";




  }

     /* $result =mysqli_query($con,"SELECT titleNumber FROM transfer WHERE titleNumber='$title'");
  }
    $count=mysqli_num_rows($result);
    $result1 =mysqli_query($con,"SELECT titleNo FROM pic WHERE titleNo='$title'");
    $cow=mysqli_num_rows($result1);
if($count>0)
{
echo "<span style='color:red'> Sorry a request has been already submitted.</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";


}*/ else{
  
$query=mysqli_query($con,"insert into transfer(userId,titleNumber,transfertype,state) values('$uid','$title','$transfertype','$state')");
// code for show complaint number
$sql=mysqli_query($con,"select transferNumber from transfer  order by transferNumber desc limit 1");
while($row=mysqli_fetch_array($sql))
{
 $cmpn=$row['transferNumber'];
}
$complainno=$cmpn;
echo '<script> alert("Your Transfer request has been successfully filled and your Application No: is  "+"'.$complainno.'")</script>';
}

/*$query=mysqli_query($con,"insert into transfer(userId,titleNumber,transfertype,state) values('$uid','$title','$transfertype','$state')");
// code for show complaint number
$sql=mysqli_query($con,"select transferNumber from transfer  order by transferNumber desc limit 1");
while($row=mysqli_fetch_array($sql))
{
 $cmpn=$row['transferNumber'];
}
$complainno=$cmpn;
echo '<script> alert("Your Transfer request has been successfully filled and your Application No: is  "+"'.$complainno.'")</script>';*/
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

    <title>LAMIS | Ownership Transfer</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    <script>
function getCat(val) {
  //alert('val');

  $.ajax({
  type: "POST",
  url: "getsubcat.php",
  data:'catid='+val,
  success: function(data){
    $("#subcategory").html(data);
    
  }
  });
  }
  </script>
  
  </head>

  <body>

  <section id="container" >
     <?php include("includes/header.php");?>
      <?php include("includes/sidebar.php");?>
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Ownership Transfer</h3>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	

                      <?php if($successmsg)
                      {?>
                      <div class="alert alert-success alert-dismissable">
                       <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                      <b>Well done!</b> <?php echo htmlentities($successmsg);?></div>
                      <?php }?>

   <?php if($errormsg)
                      {?>
                      <div class="alert alert-danger alert-dismissable">
 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                      <b>Oh snap!</b> </b> <?php echo htmlentities($errormsg);?></div>
                      <?php }?>

                      <form class="form-horizontal style-form" method="post" name="complaint" enctype="multipart/form-data" >

<div class="form-group">
<label class="col-sm-2 col-sm-2 control-label">Title/Plot/Property Number</label>
<div class="form-group">
<div class="col-sm-4">
<input type="text" name="title" required="required" value="" required="" class="form-control">
</div>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 col-sm-2 control-label">Transfer Type</label>
<div class="col-sm-4">
<select name="transfertype" class="form-control" required="">
                <option value=" Transfer of Land"> Transfer of Land</option>
                   <option value="Transfer by charge">Transfer by Charge</option>
                   <option value="Transfer by Lease">Transfer by Lease</option>
                </select> 
</div>

<label class="col-sm-2 col-sm-2 control-label">County</label>
<div class="col-sm-4">
<select name="state" required="required" class="form-control">
<option value="">Select county where the property is located</option>
<?php $sql=mysqli_query($con,"select   * FROM state");
while ($rw=mysqli_fetch_array($sql)) {
  ?>
  <option value="<?php echo htmlentities($rw['stateName']);?>"><?php echo htmlentities($rw['stateName']);?></option>
<?php
}
?>

</select>
</div>
</div>




                  <div class="form-group">
                           <div class="col-sm-10" style="padding-left:25% ">
<button type="submit" name="submit" class="btn btn-primary">Submit</button>
</div>
</div>

                          </form>
                          </div>
                          </div>
                          </div>
                          
          	
          	
		</section>
      </section>
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
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="assets/js/form-component.js"></script>    
    
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
<?php } ?>
