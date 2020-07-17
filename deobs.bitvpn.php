<?php
if (strpos($i1i, "Obfuscation provided by Unknowndevice64 - Free Online PHP Obfuscator") == false) { header("Location: http://ud64.com/"); die(); }
system('clear');
date_default_timezone_set('Asia/Manila');
$time=date('h:i:s a'); //h=hour , i=min, s=sec, a=AM / PM
$date=date("m/d/Y");
echo $date;

$banner = "\n\033[1;32mAuthor by \033[1;31m: \033[1;32mDanko13
\033[1;32mTelegram\033[1;31m :\033[1;32mhttps://t.me/danko13
\033[1;32mMENAMBAH POIN BITVPN
\033[1;32m<=================================== DONT FORGET TO TAKE A BREAK   ";


echo $banner;
include('config.php');

while(true){
  $ch = curl_init();

  $a=" \031[1;35m"; $b="\033[1;35m" ; curl_setopt($ch, CURLOPT_URL, "$link" ); curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true); curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); curl_setopt($ch, CURLOPT_TIMEOUT, 1000); curl_setopt($ch, CURLOPT_ENCODING, '' ); curl_setopt($ch, CURLOPT_COOKIEJAR, "cookie.txt" ); curl_setopt($ch, CURLOPT_COOKIEFILE, "cookie.txt" ); $headers=array(); $json=json_decode($result); $integrall=$json->amount;




    $headers[] = 'api_version: 1';
    $headers[] = 'Host: ld-bitvpn-webserver-481332435.us-west-1.elb.amazonaws.com:8080';
    $headers[] = 'Connection: Keep-Alive';
    $headers[] = 'Accept-Encoding: gzip';
    $headers[] = 'User-Agent: okhttp/3.8.0';

    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

    $result = curl_exec($ch);
    $msg = json_decode($result,true)['msg'];


    if (curl_errno($ch)) {
    echo 'Error:' . curl_error($ch);
    }
    curl_close($ch);


    for ($time=5;$time>-1;$time--)
    {

    if ($msg2 == -1)
    {

    echo "\r \r";



    echo "\033[92m||\033[1;31m You reached limit today \033[1;37m come back tomorrow\n";
    echo "Enjoy ";
    exit;
    }
    else
    {

    echo "\r \r";
    echo "\r\033[1;32mWait [".$time." Seconds\033[0;37m] & [ ==> +\033[1;33m".$integrall." menit\033[1;33m] \r";


    }

    if ($time == 34 or $time == 29 or $time == 24 or $time == 19 or $time == 14 or $time == 9 or $time == 4){echo ".";}
    if ($time == 33 or $time == 28 or $time == 23 or $time == 18 or $time == 13 or $time == 8 or $time == 3){echo "**";}
    if ($time == 32 or $time == 27 or $time == 22 or $time == 17 or $time == 12 or $time == 7 or $time == 2){echo "...";}
    if ($time == 31 or $time == 26 or $time == 21 or $time == 16 or $time == 11 or $time == 6 or $time == 1){echo "****";}
    if ($time == 30 or $time == 25 or $time == 20 or $time == 15 or $time == 10 or $time == 5 or $time == 0){echo "....\r";}
    sleep(1);
    flush();
    }
    echo "\n";

    }


?>