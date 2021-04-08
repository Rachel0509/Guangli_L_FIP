<?php

include('connect.php');
include('functions.php');

$portfolioPage = $_GET["page"];

if($portfolioPage == 'home'){

    $topPortfolios = GetTopPortfolios($conn);
    
    return $topPortfolios;

}else if($portfolioPage == 'gallery'){

    $imgPortfolios = GetImgPortfolios($conn);
    
    return $topPortfolios;


}else if($portfolioPage == 'contact'){

}