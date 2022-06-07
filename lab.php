<?php


function area($length = 6, $width = 4) 
{
    $area = $length * $width;
    echo "Area Of Rectangle  "  . $area  ;
    $Perimeter= 2* ( $length + $width );
    echo"Perimeter:$perimeter. <br>";
}
area(); 



?>