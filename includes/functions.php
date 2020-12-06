<?php

function GetTopPortfolios($conn)
{
    $result = array();
    $sql = 'select * from items where isTop = 1';
    $query = $conn->query($sql);

    while ($row = $query->fetchAll(PDO::FETCH_ASSOC)) {
        $result = $row;
    }

    echo (json_encode($result));
}

function GetImgPortfolios($conn)
{
    $result = array();
    $sql = 'select * from items where type = "img"';
    $query = $conn->query($sql);

    while ($row = $query->fetchAll(PDO::FETCH_ASSOC)) {
        $result = $row;
    }

    echo (json_encode($result));
}
