<?php

function sequential($cari)
{
    $ci = get_instance();
    $result = $ci->db->get('buku');
    $array = array();
    while ($row=mysqli_fetch_assoc($result))
    {
    $array[] = $row;
    }
    $xs = $cari;
    $data = explode(" ", $xs);
    $jumlah_kata = (integer)count($data);
    for ($j=0; $j <count($data); $j++) { 
    for ($i = 0; $i <= count($array); $i++) {
        if ($array[$i]['judul'] == $data[$j]) {
        echo $h = $array[$i]['judul']."(Postion :".$i.")";
        }
    }
    }
    
}