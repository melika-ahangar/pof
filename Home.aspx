<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/StyleSheet.css" rel="stylesheet" />
    <link href="Content/owl.carousel.css" rel="stylesheet" />
    <link href="Content/owl.theme.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <header class="meno-hadae">
            <div class="daron">
                <div class="dakhel">
                    <ul id="dog">
                        <li class="li">
                            <div class="special">
                                <a>
                                    <img src="images/فرایانه_201946_184254465.png" class="ajab" />
                                </a>
                            </div>
                        </li>
                        <li class="marginRight-koft marginRight li">
                            <span class="fa fa-caret-down whit"></span>
                            <a class="menu-sspecial" href="#" data-toggle="dropdown">دوره های آموزشی
                            </a>
                        </li>
                        <li class="marginRight li">
                            <span class="fa fa-caret-down whit"></span>
                            <a class="menu-sspecial" onclick="menu.hidden^=1" href="#">مقالات
                            </a>
                            <ul id="menu">
                                <li>
                                    <a href="#">آموزش برنامه نویسی
                                    </a>
                                </li>
                                <li>
                                    <a href="#">مخاجرت تحصیلی
                                    </a>
                                </li>
                                <li>
                                    <a href="#">اطلاعیه های فرایانه
                                    </a>
                                </li>
                                <li>
                                    <a href="#">دانستنی ها
                                    </a>
                                </li>
                            </ul>

                        </li>
                        <li class="marginRight li"><a class="menu-sspecial" href="#">گالری تصاویر
                        </a>
                        </li>
                        <li class="marginRight li"><a class="menu-sspecial" href="#">سوالات متداول
                        </a>
                        </li>
                        <li class="marginRight li"><a class="menu-sspecial" href="#">درباره فرایانه
                        </a>
                        </li>
                        <li class="marginRight li"><a class="menu-sspecial" href="#">ارتباط با فرایانه 
                        </a>
                        </li>
                    </ul>
                    <div class="shomare">

                        <a href="#">
                            <i class="fa fa-mobile">01133881416
                            </i>
                        </a>
                        <a href="#">
                            <i class="fa fa-phone">09378950221
                            </i>
                        </a>
                    </div>
                </div>
            </div>
        </header>
        <div id="slai" dir="ltr">
            <div id="demo">
                <div class="container">
                    <div class="row">
                        <div class="span12">
                            <div id="owl-demo" class="owl-carousel">

                                <div class="item">
                                    <img src="Images/Farayane_202117_2311534.jpg" />
                                </div>
                                <div class="item">
                                    <img src="Images/Farayane_2021912_17385325.jpg" />
                                </div>
                                <div class="item">
                                    <img src="Images/Farayane_20221224_3743661.jpg" />
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="Scripts/jquery-1.9.1.min.js"></script>
            <script src="Scripts/owl.carousel.js"></script>
            <style>
                #owl-demo .item img {
                    display: block;
                    width: 100%;
                    height: auto;
                }

                #bar {
                    width: 0%;
                    max-width: 100%;
                    height: 4px;
                    background: #7fc242;
                }

                #progressBar {
                    width: 100%;
                    background: #EDEDED;
                }
            </style>

            <script>
                $(document).ready(function () {

                    var time = 7; // time in seconds

                    var $progressBar,
                        $bar,
                        $elem,
                        isPause,
                        tick,
                        percentTime;

                    //Init the carousel
                    $("#owl-demo").owlCarousel({
                        slideSpeed: 500,
                        paginationSpeed: 500,
                        singleItem: true,
                        afterInit: progressBar,
                        afterMove: moved,
                        startDragging: pauseOnDragging
                    });

                    //Init progressBar where elem is $("#owl-demo")
                    function progressBar(elem) {
                        $elem = elem;
                        //build progress bar elements
                        buildProgressBar();
                        //start counting
                        start();
                    }

                    //create div#progressBar and div#bar then prepend to $("#owl-demo")
                    function buildProgressBar() {
                        $progressBar = $("<div>", {
                            id: "progressBar"
                        });
                        $bar = $("<div>", {
                            id: "bar"
                        });
                        $progressBar.append($bar).prependTo($elem);
                    }

                    function start() {
                        //reset timer
                        percentTime = 0;
                        isPause = false;
                        //run interval every 0.01 second
                        tick = setInterval(interval, 10);
                    };

                    function interval() {
                        if (isPause === false) {
                            percentTime += 1 / time;
                            $bar.css({
                                width: percentTime + "%"
                            });
                            //if percentTime is equal or greater than 100
                            if (percentTime >= 100) {
                                //slide to next item 
                                $elem.trigger('owl.next')
                            }
                        }
                    }

                    //pause while dragging 
                    function pauseOnDragging() {
                        isPause = true;
                    }

                    //moved callback
                    function moved() {
                        //clear interval
                        clearTimeout(tick);
                        //start again
                        start();
                    }

                    //uncomment this to make pause on mouseover 
                    // $elem.on('mouseover',function(){
                    //   isPause = true;
                    // })
                    // $elem.on('mouseout',function(){
                    //   isPause = false;
                    // })
                });
            </script>

        </div>
        <div class="Clear"></div>
        <div class="MainThree">
            <div class="Itemss">
                <div class="ItemPicture">
                    <div class="Opacity">
                        <div class="Icon">
                            <div class="Circle">
                                <i class="fa fa-graduation-cap Color fa-2x"></i>
                            </div>
                            <h5>دانشجویان</h5>
                        </div>
                        <div class="Title">
                            <p>
                                دانشجویان آموزشگاه کامپیوتر فرایانه
                            </p>
                        </div>
                        <div class="aTags">
                            <a href="#">پیش ثبت نام اینترنتی 
                            </a>
                            <a href="#">لیست دوره های قابل ارائه
                            </a>
                            <a href="#">پرداخت اینترنتی شهریه
                        
                            </a>
                            <a href="#">خرید کتاب و جزوه
                        
                            </a>
                            <a href="#">نرخ شهریه دوره ها
                        
                            </a>
                            <a href="#">درخواست آموزش خصوصی
                        
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="Itemss">
                <div class="ItemPicture">
                    <div class="Opacity">
                        <div class="Icon">
                            <div class="Circle">
                                <i class="fa fa-braille Color fa-2x"></i>
                            </div>
                            <h5>آزمون ها</h5>
                        </div>
                        <div class="Title">
                            <p>
                                آزمون های حرفه ای آموزشگاه کامپیوتر فرایانه
                            </p>
                        </div>
                        <div class="aTags">
                            <a href="#">شرایط قبولی دانشجویان در آزمون  
                            </a>
                            <a href="#">کارت ورود به جلسه آزمون
                        
                            </a>
                            <a href="#">اعلام نتایج آزمون
                        
                        
                            </a>
                            <a href="#">سامانه صدور گواهینامه
                        
                            </a>
                            <a href="#">ثبت
                            نام آزمون جذب مدرس
                        
                        
                            </a>
                            <a href="#">ثبت
                            نام آزمون جذب پرسنل
                        
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="Itemss">
                <div class="ItemPicture">
                    <div class="Opacity">
                        <div class="Icon">
                            <div class="Circle">
                                <i class="fa fa-credit-card-alt fa-2x Color"></i>
                            </div>
                            <h5>مشتریان</h5>
                        </div>
                        <div class="Title">
                            <p>مراکز، فروشگاه ها و سازمان ها</p>


                        </div>
                        <div class="aTags">
                            <a href="#">ورود به سامانه مشتریان    
                            </a>
                            <a href="#">سفارش اپلیکیشن تحت وب و ویندوز 
                            </a>
                            <a href="#">نمونه کارهای ما    
                            </a>
                            <a href="#">مشاوره
                            </a>
                            <a href="#">پشتیبانی
                            </a>
                            <a href="#">سامانه پرسنل آموزشگاه  
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
