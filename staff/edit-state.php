
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
date_default_timezone_set('Africa/Nairobi');// change according timezone
$currentTime = date( 'd-m-Y h:i:s A', time () );


if(isset($_POST['submit']))
{
     $uid= $_SESSION['alogin'];
    $ui=$_SESSION['id'];
     //$uid=$_SESSION['username'];
    $titleNo=$_POST['titleNo'];
	$area=$_POST['area'];
	$map=$_POST['map'];
	$coord=$_POST['coord'];
	$namba=$_POST['namba'];
	$name=$_POST['nam'];
	$fileName= basename($_FILES["file"]["name"]);

	$id=intval($_GET['id']);
$sql=mysqli_query($con,"update pic set titleNo='$titleNo',area='$area',map='$map',coord='$coord',idNumber='$namba',name='$name',cFile='$fileName',updationDate='$currentTime' where id='$id'");

    if($sql){

/*
$host=$_SERVER['HTTP_HOST'];
$uip=$_SERVER['REMOTE_ADDR'];

$log=mysqli_query($con,"insert into staffedit(uid,title,userip) values('$uid','$titleNo,'$uip')");
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');

*/


$host=$_SERVER['HTTP_HOST'];
$uip=$_SERVER['REMOTE_ADDR'];

$query=mysqli_query($con,"insert into staffedit(uid,username,title,userip) values('$ui','$uid',' $titleNo','$uip')");


$_SESSION['msg']="Records  Updated Successfully  !!";
}
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin| State</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>
<?php include('include/header.php');?>

	<div class="wrapper">
		<div class="container">
			<div class="row">
<?php include('include/sidebar.php');?>				
			<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Update Records</h3>
							</div>
							<div class="module-body">

									<?php if(isset($_POST['submit']))
{?>
									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Well done!</strong>	<?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?>
									</div>
<?php } ?>


									<br />

			<form class="form-horizontal row-fluid" name="Category" method="post"  enctype = "multipart/form-data">
<?php
$id=intval($_GET['id']);
$query=mysqli_query($con,"select * from pic where id='$id'");
while($row=mysqli_fetch_array($query))
{
?>	
<div class="control-group">
<label class="control-label" for="basicinput">Title Number</label>
<div class="controls">
<input type="text" placeholder="Enter Title Number"  name="titleNo" value="<?php echo  htmlentities($row['titleNo']);?>" class="span8 tip" required>
</div>
</div>
										<div class="control-group">
<label class="control-label" for="basicinput">Map Area</label>
<div class="controls">
<input type="text" placeholder="Enter Approx Map area"  name="area" value="<?php echo  htmlentities($row['area']);?>" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Map Coordinates</label>
<div class="controls">
<input type="text" placeholder="Enter Map area"  name="map" value="<?php echo  htmlentities($row['map']);?>" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">Location Coordinates</label>
<div class="controls">
<input type="text" placeholder="Enter Location coordinates"  name="coord" value="<?php echo  htmlentities($row['coord']);?>" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">ID/COMPANY NUMBER</label>
<div class="controls">
<input type="text" placeholder="Enter ID Number/Company Number"  name="namba" value="<?php echo  htmlentities($row['idNumber']);?>" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">OWNERS NAME</label>
<div class="controls">
<input type="text" placeholder="Enter Owners name"  name="nam" value="<?php echo  htmlentities($row['name']);?>" class="span8 tip" required>
</div>
</div>
<div class="control-group">
<label class="control-label" for="basicinput">File</label>
<div class="controls">
<input type="file" placeholder=" File"  name="file" value="<?php echo  htmlentities($row['cFile']);?>" class="span8 tip" >
</div>
</div>

									<?php } ?>	

	<div class="control-group">
											<div class="controls">
												<button type="submit" name="submit" class="btn">Update</button>
											</div>
										</div>
									</form>
							</div>
						</div>


						

						
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

<?php include('include/footer.php');?>

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"></script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
</body>
<?php } ?>