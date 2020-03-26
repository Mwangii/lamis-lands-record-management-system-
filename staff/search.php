
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
date_default_timezone_set('Asia/Kolkata');// change according timezone
$currentTime = date( 'd-m-Y h:i:s A', time () );

if(isset($_POST['submit']))
  {
    $titleNo=$_POST['titleNo'];
	$area=$_POST['area'];
	$map=$_POST['map'];
	$coord=$_POST['coord'];
	$name=$_POST['name'];
	$compfile=$_FILES["compfile"]["name"];

	//$description=$_FILES["description"]["name"];
    //$RPassword=$_POST['RepeatPassword'];
    $ret=mysqli_query($con, "select titleNo from pic where titleNo='$titleNo'");
    $result=mysqli_fetch_array($ret);
    if($result>0){
$_SESSION['msg']="Sorry the Records already exists !!";
    }
    else{
    	move_uploaded_file($_FILES["compfile"]["tmp_name"],"compdocs/".$_FILES["compfile"]["name"]);


$sql=mysqli_query($con,"insert into pic(titleNo,area,map,coord,name,cFile) values('$titleNo','$area','$map','$coord','$name','$compfile')");

    if ($sql) {
    $_SESSION['msg']="Records added Successfully !!";
  }
  else
    {
    	$_SESSION['msg']="Please repeat the process !!";
    }

  }
}
/*
if(isset($_POST['submit']))
{
	$state=$_POST['state'];
	$description=$_POST['description'];
	
$sql=mysqli_query($con,"insert into state(stateName,stateDescription) values('$state','$description')");
$_SESSION['msg']="State added Successfully !!";

}*/

if(isset($_GET['del']))
		  {
		          mysqli_query($con,"delete from pic where id = '".$_GET['id']."'");
                  $_SESSION['delmsg']="Ttile details deleted !!";
		  }

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Staff| Quick Search</title>
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
								<h3>Records Search</h3>
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

			

	<div class="module">
							<div class="module-head">
								<h3>Quick Search</h3>
							</div>
							<div class="module-body table">
								<table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display" width="100%">
									<thead>
										<tr>
											<th>#</th>
											<th>Title Number</th>
											<th>Approx Area-Ha</th>
											<th>Map Sheet</th>
											<th>Earth Cordinates</th>
											<th>OWNER NAMES</th>
											<th>Creation Date</th>
											<th>Last Updated</th>
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
											<td><?php echo htmlentities($row['name']);?></td>
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