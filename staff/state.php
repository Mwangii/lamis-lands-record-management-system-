
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
	  $titleNo=$_POST['titleNo'];
	$area=$_POST['area'];
	$map=$_POST['map'];
	$coord=$_POST['coord'];
	$name=$_POST['nam'];
	$fileName= basename($_FILES["file"]["name"]);

$sql=mysqli_query($con,"insert into pic(titleNo,area,map,coord,name,cFile) values('$titleNo','$area','$map','$coord','$name','$fileName')");
$_SESSION['msg']="Records added Successfully !!";

}

if(isset($_GET['del']))
		  {
		          mysqli_query($con,"delete from pic where id = '".$_GET['id']."'");
                  $_SESSION['delmsg']="Records  deleted Successfully !!";
		  }

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Staff| Titles</title>
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
								<h3>State</h3>
							</div>
							<div class="module-body">

									<?php if(isset($_POST['submit']))
{?>
									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Well done!</strong>	<?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?>
									</div>
<?php } ?>


									<?php if(isset($_GET['del']))
{?>
									<div class="alert alert-error">
										<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>Oh snap!</strong> 	<?php echo htmlentities($_SESSION['delmsg']);?><?php echo htmlentities($_SESSION['delmsg']="");?>
									</div>
<?php } ?>

									<br />

			<form class="form-horizontal row-fluid" name="Category" method="post"  enctype = "multipart/form-data">
									
									
<div class="control-group">
<label class="control-label" for="basicinput">TITLE NUMBER</label>
<div class="controls">
<input type="text" placeholder="Enter Title Number"  name="titleNo" class="span8 tip" required>
</div>
</div>


<div class="control-group">
											<label class="control-label" for="basicinput">APPROX AREA</label>
											<div class="controls">
												<input type="text" placeholder="Enter Approximate Area in Hectares"  name="area" class="span8 tip" required>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">MAP SHEET NO.</label>
											<div class="controls">
												<input type="text" placeholder="Enter Map Sheet Number"  name="map" class="span8 tip" required>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">Location COORDINATES</label>
											<div class="controls">
												<input type="text" placeholder="Enter Location Coordinates"  name="coord" class="span8 tip" required>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">OWNERS NAME And ADDRESS</label>
											<div class="controls">
												<textarea class="span8" name="nam" rows="5"></textarea>
											</div>
										</div>
										<div class="control-group">
											<label class="col-sm-2 col-sm-2 control-label">Title Deed Scanned Original 	Copy (pdf,jpeg,docx,doc or gif format) </label>
											<div class="controls">
												<input type="file" name="file" class="form-control" value="">
											</div>
										</div>

	<div class="control-group">
											<div class="controls">
												<button type="submit" name="submit" class="btn">Create</button>
											</div>
										</div>
									</form>
							</div>
						</div>


	<div class="module">
							<div class="module-head">
								<h3>Manage Records</h3>
							</div>
							<div class="module-body table">
								<table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display" width="100%">
									<thead>
										<tr>
											<th>#</th>
											<th>Title Number</th>
											<th>Approx Area</th>
											<th>Map Coordinate</th>
											<th>Names</th>
											<th>Creation date</th>
											<th>Last Updated</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>

<?php $query=mysqli_query($con,"select * from pic");
$cnt=1;
while($row=mysqli_fetch_array($query))
{
?>									
										<tr>
											<td><?php echo htmlentities($cnt);?></td>
											<td><?php echo htmlentities($row['titleNo']);?></td>
											<td><?php echo htmlentities($row['area']);?></td>
											<td><?php echo htmlentities($row['map']);?></td>
											<td><?php echo htmlentities($row['coord']);?></td>

											<td> <?php echo htmlentities($row['postingDate']);?></td>
											<td><?php echo htmlentities($row['updationDate']);?></td>
											<td>
											<a href="edit-state.php?id=<?php echo $row['id']?>" ><i class="icon-edit"></i></a>
											<a href="state.php?id=<?php echo $row['id']?>&del=delete" onClick="return confirm('Are you sure you want to delete?')"><i class="icon-remove-sign"></i></a></td>
										</tr>
										<?php $cnt=$cnt+1; } ?>
										
								</table>
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