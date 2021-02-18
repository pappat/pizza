<?php
require_once "config.php";
$sql="SELECT pazon, pnev,par,tipus,osszetevok,foto FROM pizza";
$stmt=$db->query($sql);
$str="";
while($row=$stmt->fetch()){
    extract($row);
    $str.="<div class='col-md-6 col-lg-4 mb-5'>
            <div class='card h-100' style='width: 18rem;'>
                <img class='card-img-top' src='{$foto}' alt='pizza'>
                 <div class='card-body h-100'>
                    <h5 class='card-title'> {$pnev}</h5>
                    <p class='card-text'>Tipus: {$tipus}({$osszetevok})</p>
                    <a href='#' class='btn btn-primary'>Kiválaszt</a>
                </div>
            </div>
          </div>";
}

?>           

<section class='page-section portfolio' id='portfolio'>
 <div class='container '>
    <h2 class="page-section-heading text-center   mt-5 ">Kínálatunk</h2>
    <!--  Grid Items-->
    <div class="row justify-content-center">
        <!--  Item -->
        <?=$str?>
 </div>
</section>