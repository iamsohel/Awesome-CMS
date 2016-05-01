<div class="modal-header">
    <h3>Log In</h3>
	<p> please login with relatives informations</p>
</div>
<div class="modal-body">

   <?php echo validation_errors();?>  
   <?php echo form_open();?>
  <table class="table">
  <tr>
     <td> Email:</td>
	 <td><?php echo form_input('email');?></td>
	 </tr>
	  <tr>
	  <td> password:</td>
	 <td><?php echo form_password('password');?></td>
	  </tr>
	   <tr>
	    <td><?php echo form_submit('submit','Login','class="btn btn-primary"');?></td>
	    </tr>
  </table>
  <?php echo form_close();?>  

</div>