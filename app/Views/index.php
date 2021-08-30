
<body>
		<div class="container bg-light col-md-6 align-center pb-3" id ="formsec">
			<h2 class="text-center">Create Blog</h2>
			<form action="<?= site_url();?>home/saveblog" method="POST">
				<div class="form-group">
					<label>Bloger Name</label><span class="text-danger"> *</span>
					<input type="text" class="form-control" name="blogerName" placeholder="Enter Name" required>
				</div>
				<div class="form-group">
					<label>Title</label><span class="text-danger"> *</span>
					<input type="text" class="form-control" name="title" placeholder="Enter Title" required>
				</div>
				<div class="form-group">
					<label>Content</label><span class="text-danger"> *</span>
					<textarea type="text" class="form-control" name="content" placeholder="Blog Content" rows="2" required></textarea>
				</div>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" name="termcond" required>
					<label class="form-check-label">Accept Terms And Conditions</label>
				</div>
				<button type="submit" class="btn btn-primary float-right">Submit</button>
				<div style="clear:both;"></div>
			</form>
			
		</div>
		<?php if(!empty($blogs)){?>
		<div class="container table-responsive">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>S.NO.</th>
						<th>Bloger Name</th>
						<th>Title</th>
						<th>Content</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php $i=0; foreach($blogs as $blogdata){ $i++;$id = $blogdata['id'];?>
					<tr>
						<td><?= $i;?></td>
						<td><?= $blogdata['blogername'];?></td>
						<td><?= $blogdata['blogtitle'];?></td>
						<td><?= $blogdata['content'];?></td>
						<td> <button type="button" class="btn btn-primary btnedtcls" onclick="editblogfun(<?=$id;?>)">Edit</button>
							 <button type="button" class="btn btn-danger btndelcls" onclick="deleteblogfun(<?=$id;?>)">Delete</button> 
						</td>
					</tr>
				<?php } ?>
				</tbody>
			</table>
		</div>
	<?php } ?>



<!-----------------java script functionality------------->
<script>
	function editblogfun(id)
	{
		// alert(id);
		$.ajax({
			url: '<?= site_url();?>home/editblog',
			type: 'POST',
			data: {id:id},
			success:function(response){
				$('#formsec').html(response);
				// alert(response);
			}
			});
	}
	function deleteblogfun(id)
	{
		if (confirm('Are you sure to delete this blog?')) {
			$.ajax({
				url: '<?= site_url();?>home/deleteblog',
				type: 'POST',
				data: {id:id},
				success:function(response){
					alert(response);
					setTimeout(function(){ location = '' }, 800);
				}
			});
		}
		
	}




</script>
