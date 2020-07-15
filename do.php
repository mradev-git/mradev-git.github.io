<html>
<head>
	<meta charset="UTF-8">
	<style>*{font-family:Arial;}a{text-decoration:none;}</style>
	<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/base-min.css">
	<meta name="description" content="UD64, Unknowndevice64 deobfuscator/decrypter.">
	<meta name="keywords" content="ud64 deobfuscate, ud64 cleaner, ud64 beautifier, ud64 decrypt">
	<title>UD64 - Unknowndevice64 Deobfuscator</title>
	<body>
		<center>
			<h2>UD64 - Unknowndevice64 Deobfuscator</h2>
			<?php
			if($_POST){
        // don't judge, it works
        // it's pretty easy to decrypt, try it yourself!
				$obfuscated_data = $_POST['obfuscated'];
				$cleaned_data = gzinflate(convert_uudecode(base64_decode(gzinflate(base64_decode(str_rot13(explode('"', explode('$uD64_c0m("',$obfuscated_data)[1])[0]))))));
				$cleaned_data = explode('header("Location: http://ud64.com/"); die(); } ', $cleaned_data)[1];
				?>
				<textarea cols="60" rows="20" readonly>&lt;?php
<?=$cleaned_data?></textarea>
				<?php
				}
				?>
				<form method="post">
					<textarea name="obfuscated" placeholder="
					&lt;?php

					$i1i='========================================================================
					Obfuscation provided by Unknowndevice64 - Free Online PHP Obfuscator
					http://www.ud64.com/
					==============================================================================';


					$uD64_c0m...." cols="60" rows="20" class="form-control"></textarea><br><br>
					<button type="submit">Deobfuscate</button>
				</form>
			</center>
		</body></html>
