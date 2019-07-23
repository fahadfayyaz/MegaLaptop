<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
<style>
	h1{ color: red; }
</style>
</head>
<body>
	<h1>Reset Password</h1>
	To reset your password, Complete this form:
	<a href="<?php echo site_url('password/reset/' . $token); ?>">
		<?php echo site_url( 'password/reset/' . $token ); ?>
	</a>

	<br><br>
	<p>Thank you,</p>	
</body>
</html>