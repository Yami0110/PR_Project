<?php

include_once "db_connect.php";
$db = $GLOBALS['db'];

if (!isset($_SESSION['is_admin']) || $_SESSION['is_admin'] === false) {
    header("Location: login_form.php");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalog-Z Contact page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
<!--
    
TemplateMo 556 Catalog-Z

https://templatemo.com/tm-556-catalog-z

-->
</head>
<body>
    <!-- Page Loader -->
    <div id="loader-wrapper">
        <div id="loader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="admin.php">
                <i class="fas fa-film mr-2"></i>
                Catalog-Z (Admin page)
            </a>
            <a href="logout.php" class="btn btn-primary" style="width: auto">Logout</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link nav-link-1" href="admin.php">Main</a>
                </li>
                <?php
                    if ($_GET['mediaType'] == 'photos') {
                        echo '<li class="nav-item">
                                <a class="nav-link nav-link-2 active" aria-current="page" href="list.php?mediaType=photos">Photos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-link-3" href="list.php?mediaType=videos">Videos</a>
                            </li>';
                    } else {
                        echo '<li class="nav-item">
                                <a class="nav-link nav-link-2" href="list.php?mediaType=photos">Photos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-link-3 active" aria-current="page" href="list.php?mediaType=videos">Videos</a>
                            </li>';
                    }
                ?>
                <li class="nav-item">
                    <a class="nav-link nav-link-4" href="mails_list.php">Mails</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>

    <div class="tm-hero d-flex justify-content-center align-items-center" data-parallax="scroll" data-image-src="img/hero.jpg"></div>

    <div class="container-fluid tm-mt-60">
        <div class="row tm-mb-50">
            <div class="col-lg-4 col-12 mb-5">
                <?php
                    if ($_GET['mediaType'] == 'videos') {
                        echo '<h2 class="tm-text-primary mb-5">Add video</h2>';
                    } else {
                        echo '<h2 class="tm-text-primary mb-5">Add photo</h2>';
                    }
                ?>
                <form id="contact-form" action="add_media.php" method="POST" class="tm-contact-form mx-auto">
                    <div class="form-group">
                        <h3 class="tm-text-primary">Display name:</h3>
                        <input type="text" name="display_name" id="display_name" class="form-control rounded-0" />
                    </div>
                    <div class="form-group">
                        <h3 class="tm-text-primary">Sys name:</h3>
                        <input type="text" name="sys_name" id="sys_name" class="form-control rounded-0" />
                    </div>
                    <div class="form-group">
                        <h3 class="tm-text-primary">Image link:</h3>
                        <input type="text" name="image_link" id="image_link" class="form-control rounded-0" />
                    </div>
                    <div class="form-group">
                        <h3 class="tm-text-primary">Dimension:</h3>
                        <input type="text" name="dimension" id="dimension" class="form-control rounded-0" />
                    </div>
                    <div class="form-group">
                        <h3 class="tm-text-primary">Format:</h3>
                        <input type="text" name="format" id="format" class="form-control rounded-0" />
                    </div>
                    <?php
                        if ($_GET['mediaType'] == 'videos') {
                    ?>
                        <div class="form-group">
                            <h3 class="tm-text-primary">Video link:</h3>
                            <input type="text" name="video_link" id="video_link" class="form-control rounded-0" />
                        </div>
                        <div class="form-group">
                            <h3 class="tm-text-primary">Duration:</h3>
                            <input type="text" name="duration" id="duration" class="form-control rounded-0" />
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="type" id="type" value="videos" class="form-control rounded-0" />
                        </div>
                    <?php
                        } else {
                    ?>
                        <div class="form-group">
                            <input type="hidden" name="type" id="type" value="photos" class="form-control rounded-0" />
                        </div>
                    <?php
                        }
                    ?>
                    <div class="form-group tm-text-right">
                        <button type="submit" name="submit" class="btn btn-primary" style="width: 200px">Add</button>
                    </div>
                </form>              
            </div>
        </div>
    </div> <!-- container-fluid, tm-container-content -->

    <footer class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
        <div class="container-fluid tm-container-small">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-12 px-5 mb-5">
                    <h3 class="tm-text-primary mb-4 tm-footer-title">About Catalog-Z</h3>
                    <p>Catalog-Z is free Bootstrap 5 Alpha 2 HTML Template for video and photo websites. You can freely use this TemplateMo layout for a front-end integration with any kind of CMS website.</p>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                    <h3 class="tm-text-primary mb-4 tm-footer-title">Our Links</h3>
                    <ul class="tm-footer-links pl-0">
                        <li><a href="#">Advertise</a></li>
                        <li><a href="#">Support</a></li>
                        <li><a href="#">Our Company</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                    <ul class="tm-social-links d-flex justify-content-end pl-0 mb-5">
                        <li class="mb-2"><a href="https://facebook.com"><i class="fab fa-facebook"></i></a></li>
                        <li class="mb-2"><a href="https://twitter.com"><i class="fab fa-twitter"></i></a></li>
                        <li class="mb-2"><a href="https://instagram.com"><i class="fab fa-instagram"></i></a></li>
                        <li class="mb-2"><a href="https://pinterest.com"><i class="fab fa-pinterest"></i></a></li>
                    </ul>
                    <a href="#" class="tm-text-gray text-right d-block mb-2">Terms of Use</a>
                    <a href="#" class="tm-text-gray text-right d-block">Privacy Policy</a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-7 col-12 px-5 mb-3">
                    Copyright 2020 Catalog-Z Company. All rights reserved.
                </div>
                <div class="col-lg-4 col-md-5 col-12 px-5 text-right">
                    Designed by <a href="https://templatemo.com" class="tm-text-gray" rel="sponsored" target="_parent">TemplateMo</a>
                </div>
            </div>
        </div>
    </footer>
    
    <script src="js/plugins.js"></script>
    <script>
        $(window).on("load", function() {
            $('body').addClass('loaded');
        });
    </script>
</body>
</html>