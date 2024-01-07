<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>初栖花坊</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
        </script>
    <link rel="shortcut icon" href="img/logo/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/aboutus.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/4b9549b686.js" crossorigin="anonymous"></script>
</head>

<body>
    <header>
        <%@ include file="header.jsp"%>
    </header>
    <main>
        <div class="contact">
            <div class="map">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3617.256606068759!2d121.23601279678955!3d24.957382700000014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3468221447a0f021%3A0x2b86d2650bb8bcff!2z5Lit5Y6f5aSn5a24!5e0!3m2!1szh-TW!2stw!4v1703389952951!5m2!1szh-TW!2stw"
                    width="700" height="500" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade">
                </iframe>
                <div class="loc">
                    <i class="fa-sharp fa-solid fa-location-dot"></i>
                    320桃園市中壢區中北路200號
                </div>
                <div class="phone">
                    <i class="fa-solid fa-phone"></i>
                    (03)-2659999
                </div>
            </div>
            <div class="usright">
                <h2 style="color: #522c01;">聯絡我們</h2>
                <div class="wrap-contain">
                    <form action>
                        <input type="text" placeholder="大名"><br>
                        <input type="text" placeholder="電話"><br>
                        <input type="text" placeholder="E-mail"><br>
                        <h3 class="tellus">留言</h3>
                        <textarea class="ccontent" id="content" cols="30" rows="10" placeholder="說點什麼..."></textarea>
                        <input type="submit" class="btn" value="送出">
                    </form>

                </div>
            </div>
        </div>
        <div class="people">
            <div class="detailinfo">
                <div class="card">
                    <div class="photo">
                        <img src="img/photo/photo1.jpg" width="300" height="400">
                    </div>
                    <h1>前端</h1>
                    <h2>謝宜蓁</h2>
                    <p>我愛我的隊友，她們老扛了，前端真的好難嗚嗚嗚。</p>
                </div>
                <div class="card">
                    <div class="photo">
                        <img src="img/photo/photo5.jpg" width="300" height="400">
                    </div>
                    <h1>前端</h1>
                    <h2>林稔庭</h2>
                    <p>前端排版真的很不容易，尤其是版面設計跟調色，有時候版面會亂跑或跑不出來就會有點生氣哈哈哈，非常感謝我的組員很頂，互相幫助跟良好溝通下很順利的完成。</p>
                </div>
                <div class="card">
                    <div class="photo">
                        <img src="img/photo/photo6.jpg" width="300" height="400">
                    </div>
                    <h1>前端</h1>
                    <h2>張心柔</h2>
                    <p>12月在寒冷的冬天，窩在寒冷的宿舍，手指凍的都打不了，感謝我們前端夥伴們很扛，我廢成這樣還能完成這個網站。</p>
                </div>
                <div class="card">
                    <div class="photo">
                        <img src="img/photo/photo2.jpg" width="300" height="400">
                    </div>
                    <h1>後端</h1>
                    <h2>黃翊暟</h2>
                    <p>這次團隊合作做期末專題是一個很新奇的體驗，讓我可以更熟悉資料庫的用法。</p>
                </div>
                <div class="card">
                    <div class="photo">
                        <img src="img/photo/photo3.jpg" width="300" height="400">
                    </div>
                    <h1>後端</h1>
                    <h2>陳育伸</h2>
                    <p>這次跟甲班同學一起合作一個專題是非常有趣的體驗，藉由這次專題讓我們跟甲班同學有更多互動，也讓我更熟悉網頁後段程式的設計。</p>
                </div>
                <div class="card">
                    <div class="photo">
                        <img src="img/photo/photo4.jpg" class="set" width="300" height="400">
                    </div>
                    <h1>後端</h1>
                    <h2>石昱宏</h2>
                    <p>我認為這次合作寫一個類似電商網站的教學方式很新奇也很獨特，但也要同時面對一些合作才有的問題，這些都要由我們逐一克服，希望能順利完成。</p>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="footerlogo">
            <img src="img/logo/logo.png" style="width: 150px;">
            <br>
            <h3 class="name">初栖 Seventh Day</h3>
            <br>
            copyright © 2023 All Seventh Day
    </footer>
    <div class="clearfix"></div>
</body>