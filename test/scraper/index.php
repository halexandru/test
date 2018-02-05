<?php

$curl = curl_init();
$toplist_data = array();
$article_data = array();

$url = "https://www.esportsonly.com/";

curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$result = curl_exec($curl);
$toplist = array();
$about = array();
$article = array();

//match rank
preg_match_all('!<td rowspan="2" class="Toplist-cell Toplist-cellRank" data-title="Rank">[\s]*<span class="c-font-bold c-font-uppercase">(.*?)<\/span>[\s]*<\/td>!is',$result,$match);
$toplist['rank'] = $match[1];

//match image
preg_match_all('!data-src="(.*?)"(.*?)alt="(.*?) Logo"!is',$result,$match);
$toplist['image'] = $match[1];

//match description
preg_match_all('!<div class="c-font-18">(.*?)<\/div>!is',$result,$match);
$toplist['description'] = $match[1];

//match rating
preg_match_all('!<span class="c-font-bold c-font-uppercase">([0-9]+\.[0-9][0-9]?)<\/span>!is',$result,$match);
$toplist['rating'] = $match[1];

//match url
preg_match_all('!<td rowspan="2" class="Toplist-cell Toplist-cellLogo">[\s]*<a href="(\/.*?)" (.*?)>!is',$result,$match);
$toplist['url'] = $match[1];


//save all data in a nicely formatted array
foreach($toplist as $key => $value) {
    for ($i = 0; $i < count ($toplist[$key]);$i++){
        $toplistdata[$i][$key] = $toplist[$key][$i];
    }
}
$toplist_data = array_merge($toplistdata,$toplist_data);

//match about
preg_match_all('!<div class="typography">[\s]*(.*?)[\s]*<\/div>!is',$result,$match);
$about['text'] = $match[1];

//match article title
preg_match_all('!<h3 class="c-title c-font-uppercase c-theme-on-hover c-font-bold">(.*?)<\/h3>!',$result,$match);
$article['image'] = $match[1];

//match article title
preg_match_all('!<h3 class="c-title c-font-uppercase c-theme-on-hover c-font-bold">(.*?)<\/h3>!',$result,$match);
$article['title'] = $match[1];

//match article description
preg_match_all('!<p class="c-summary">(.*?)<\/p>!',$result,$match);
$article['description'] = $match[1];

//match article url
preg_match_all('!<a href="(.*?)"><h3 class="c-title!',$result,$match);
$article['url'] = $match[1];

//match article category
preg_match_all('!class="(.*?)c-font-white(.*?)">(.*?)<\/a>!',$result,$match);
$article['category'] = $match[3];

//match article date
preg_match_all('!<div class="c-author c-font-uppercase">(.*?)<\/div>!',$result,$match);
$article['date'] = $match[1];

//save all data in a nicely formatted array
foreach($article as $key => $value) {
    for ($i = 0; $i < count ($article[$key]);$i++){
        $articledata[$i][$key] = $article[$key][$i];
    }
}
$article_data = array_merge($articledata,$article_data);

//database connection
$con=mysqli_connect("localhost","root","","test");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

// insert article
for ($i = 0; $i < 4;$i++){
    $article_query = $con->query("SELECT max(id) as idmax FROM latest_articles");
    $article_query = $article_query->fetch_all(MYSQLI_ASSOC);
    $article_id_max = $article_query[0]['idmax'];

    $article_image = $article_data[$i]['image'];
    $article_title = $article_data[$i]['title'];
    $article_description = $article_data[$i]['description'];
    $article_url = $article_data[$i]['url'];
    $article_category = $article_data[$i]['category'];
    $article_date = $article_data[$i]['date'];
    $last_change = date("Y-m-d h:i:s");
    mysqli_query($con,"ALTER TABLE latest_articles AUTO_INCREMENT=1");
    mysqli_query($con,"INSERT INTO latest_articles (image,title,short_description,url, category, published_date, last_change) VALUES ('$article_image', '$article_title', '$article_description', '$article_url', '$article_category', '$article_date', '$last_change')"); 
}

// insert toplist
for ($i = 0; $i < 6;$i++){
    $toplist_query = $con->query("SELECT max(last_change) as maxdate FROM toplist");
    $toplist_query = $toplist_query->fetch_all(MYSQLI_ASSOC);
    $last_change_db = $toplist_query[0]['maxdate'];

    $toplist_rank = $toplist_data[$i]['rank'];
    $toplist_image = $toplist_data[$i]['image'];
    $toplist_description = $toplist_data[$i]['description'];    
    $toplist_rating = $toplist_data[$i]['rating'];
    $toplist_url = $toplist_data[$i]['url'];
    $last_change = date("Y-m-d h:i:s");
    mysqli_query($con,"ALTER TABLE toplist AUTO_INCREMENT=1");
    mysqli_query($con,"INSERT INTO toplist (rank, operatorlogo, description, rating, url, last_change) VALUES ('$toplist_rank', '$toplist_image', '$toplist_description', '$toplist_rating', '$toplist_url', '$last_change')");
}

// insert about
for ($i = 0; $i < 1;$i++){
    $about_us_query = $con->query("SELECT max(last_change) as maxdate FROM general");
    $about_us_query = $about_us_query->fetch_all(MYSQLI_ASSOC);
    $last_change_db = $about_us_query[0]['maxdate'];

    $about_text = $about['text'][$i];
    $last_change = date("Y-m-d h:i:s");
    if($last_change_db != null){
        mysqli_query($con,"UPDATE general SET about_us = '$about_text', last_change = '$last_change'");
    } else {
        mysqli_query($con,"ALTER TABLE general AUTO_INCREMENT=1");
        mysqli_query($con,"INSERT INTO general (about_us, last_change) VALUES ('$about_text', '$last_change')"); 
    }
}

mysqli_close($con);
?>