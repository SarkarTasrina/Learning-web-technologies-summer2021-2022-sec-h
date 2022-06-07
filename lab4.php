<?php
      $no1=11;
      $no2=8;
      $no3=21;
      if($no1>$no2 && $no1>$no3){
        echo "largest number: ". $no1;
      }
      else{
        if($no2>$no1 && $no2>$no3){
          echo "largest number: ". $no2;
        }
        else
          echo  "largest number: " .$no3;
      }
?>