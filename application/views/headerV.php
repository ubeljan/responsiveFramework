<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    
    <base href="<?php echo base_url() ; ?>">        
    
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Responsive and mobile friendly stuff -->
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="320">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    
    <meta name="keywords" content="<?php if( isset($sleutelwoorden) ) { echo $sleutelwoorden ; } else { echo $sleutelwoordenB ; }   ?>">
    <meta name="description" content="<?php if( isset($omschrijving) ) { echo $omschrijving ; } else { echo $omschrijvingB ; }  ?>">
    <meta property="og:description" content="<?php if( isset($omschrijving) ) { echo $omschrijving ; } else { echo $omschrijvingB ; } ?>">  
	<meta name="author" content="vanWijhe.Web">		
	<meta property="og:title" content="<?php echo $naamNiv1 ; ?>">	 
    <meta http-equiv="cleartype" content="on">  
    
    <title>Responsive Framework - <?php echo $naamNiv1 ; ?></title>

    <!-- Normalize -->
    <link href="<?php echo base_url() ; ?>assets/css/normalize.css" rel="stylesheet" type="text/css">    

    <!-- Responsive grid -->
    <link href="<?php echo base_url() ; ?>assets/css/respGrid.css" rel="stylesheet" type="text/css">
    
    <!-- SmartMenus CSS -->
    <link href="<?php echo base_url() ; ?>assets/smartmenu/css/sm-core-css.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url() ; ?>assets/smartmenu/css/sm-simple.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url() ; ?>assets/smartmenu/css/sm-simple2.css" rel="stylesheet" type="text/css">

    <!-- Font-awesome  -->
    <link href="<?php echo base_url() ; ?>assets/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
    
    <!-- Basis voor site -->
    <link href="<?php echo base_url() ; ?>assets/css/responsive_framework.css" rel="stylesheet" type="text/css">
    <!-- Media queries -->
    <link href="<?php echo base_url() ; ?>assets/css/respMediaQueries.css" rel="stylesheet" type="text/css">

    <!-- Google fonts -->
    <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">
  
    <!-- favicon.ico -->
    <link rel="shortcut icon" href="<?php echo base_url() ; ?>favicon.ico">

</head>
<body>
