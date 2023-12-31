<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<%
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","1234");
    String sql="USE `newschema`";
    con.createStatement().execute(sql);
    %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>產品詳細頁</title>
    <link rel="stylesheet" href="css/item.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
        </script>
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <script src="js/item.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>

<body>
    <div class="container">
        <div class="Product">
            <div class="ptitle">
                <div class="bigtitle">
                    <h1>Product</h1>
                </div>
                <div class="smalltitle">
                </div>
            </div>
        </div>
        <div class="box">
		 <%
					sql = "SELECT * FROM newschema.product where id = 2";                    ;
					ResultSet tmp =  con.createStatement().executeQuery(sql);                 
					while(tmp.next())
					{			
				%>
            <div class="leftbox">
                <div class="picture">
                    <img src="<%=tmp.getString(2)%>" alt="" width="75%">
                </div>
            </div>
            <div class="rightbox">
                <div class="name">
				
                    <h5><%=tmp.getString(4)%></h5>
                    <h3><%=tmp.getString(3)%></h3>
                </div>
                <div class="rate">
                    <div class="bstar">&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</div>
                    <div class="star">&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</div>
                </div>
                <div class="promotion">
                    <p class="ptag">庫存數量:<%=tmp.getString(6)%></p>
                    <p class="ptag">購買即贈空白卡片一張</p>
                    <p class="ptag">全館滿3000免運</p>
                </div>
                <div class="price">
                    <span class="nt-value"><%=tmp.getString(5)%></span>
                </div>
                <div class="buy">
                    <div class="buy1">
                        <div class="buytitle">
                            數量
                        </div>
                        <div class="add_btn">
                            <input type="button" value="-" class="item_button1" onclick="minus(0)">
                            </input>
                            <input type="text" value="1" class="item_num">
                            <input type="button" value="+" class="item_button2" onclick="add(0)">
                        </div>
                    </div>
                    <div class="addtocart">
                        <input type="button" value="加入購物車" class="addcart" onclick="addCart()">
                    </div>
                </div>
            </div>
			<%
					}
    %>
        </div>
        <div class="tag">
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <button class="nav-link active" id="describe-tab" data-bs-toggle="tab" data-bs-target="#describe"
                        type="button" role="tab" aria-controls="describe" aria-selected="true">描述</button>
                    <button class="nav-link" id="wyy-tab" data-bs-toggle="tab" data-bs-target="#comment" type="button"
                        role="tab" aria-controls="comment" aria-selected="false">顧客評價</button>
                    <button class="nav-link" id="wyy-tab" data-bs-toggle="tab" data-bs-target="#mycomment" type="button"
                        role="tab" aria-controls="mycomment" aria-selected="false">我的評論</button>
                </div>
            </nav>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="describe" role="tabpanel" aria-labelledby="home-tab"
                    style="transition: none;">
                    <h4>保存方式:</h4>
                    <h4>．建議放置陰涼通風處，避免潮濕、悶熱、陽光直射的環境</h4>
                    <h4>．花材較為脆弱，盡量避免碰撞與擠壓</h4>
                    <h4>．沾附灰塵時建議以輕輕吹氣/吹塵球的方式將灰塵吹除，亦可搭配軟毛刷輕輕拂拭</h4>
                    <h4>．保存良好可維持觀賞半年~一年以上，但隨時間會慢慢出現的褪色與風化皆為正常現象喔!</h4>
                </div>
                <div class="tab-pane fade " id="mycomment" role="tabpanel" aria-labelledby="profile-tab"
                    style="transition: none;">
                    <h2 class="ttitle">發表您的評論</h2>
                    <h4>評論的產品：&nbsp;
                        <span>聖誕頌歌</span>
                    </h4>
                    <div class="myrate">
                        <div class="quality">
                            <div class="size">
                                <span>評價：</span>
                            </div>
                            <div class="mystar">
                                <div class="mystar" id="star-rating">
                                    <iconify-icon icon="material-symbols:star-outline" class="star-icon" data-index="1"
                                        width="30"></iconify-icon>
                                    <iconify-icon icon="material-symbols:star-outline" class="star-icon" data-index="2"
                                        width="30"></iconify-icon>
                                    <iconify-icon icon="material-symbols:star-outline" class="star-icon" data-index="3"
                                        width="30"></iconify-icon>
                                    <iconify-icon icon="material-symbols:star-outline" class="star-icon" data-index="4"
                                        width="30"></iconify-icon>
                                    <iconify-icon icon="material-symbols:star-outline" class="star-icon" data-index="5"
                                        width="30"></iconify-icon>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mycomment">
                        <div class="cdata">
                            <div class="cgroup">
                                <span class="size">暱稱<br></span>
                                <input type="text" name="nickname" id="nickname" value="帥哥">
                            </div>
                            <span class="size"><br>評論標題<br></span>
                            <select class="commenttype">
                                <option>產品</option>
                                <option>價格</option>
                                <option>運送</option>
                                <option>其他</option>
                            </select>
                        </div>
                        <div class="cdetail">
                            <label for="cdetail" class="size">評論</label>
                            <textarea name="cdetail" id="cdetail" rows="4" cols="50"></textarea>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="send">
                        <input type="button" value="送出評論" onclick="Comment()">
                    </div>
                </div>
                <div class="tab-pane fade" id="comment" role="tabpanel" aria-labelledby="home-tab"
                    style="transition: none;">
                    <div class="othercomment">
                        <table class="octable">
                            <thead>
                                <tr>
                                    <td>心結</td>
                                    <td>&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</td>
                                    <td>購物體驗非常出色，非常滿意！</td>
                                </tr>
                            </thead>
                            <tbody class="tcomment">
                                <tr>
                                    <td>GGbond</td>
                                    <td>&#x2605;&#x2605;&#x2605;&#x2605;</td>
                                    <td>整體滿意，但有一些小改進空間。</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="like">
                <h4 class="after">
                    其他推薦
                </h4>
                <div class="items">
                    <div class="litem">
                        <div class="pic">
                            <a href="hf-item.html">
                                <img src="img/flower/C02.jpg" alt="">
                            </a>
                        </div>
                        <div class="detail2">
                            <div class="describe">冬日來信</div>
                        </div>
                        <div class="detail2">
                            <div class="describe">NT$1,380</div>
                        </div>
                    </div>
                    <div class="litem">
                        <div class="pic">
                            <a href="hf-item.html">
                                <img src="img/flower/C03.jpg" alt="">
                            </a>
                        </div>
                        <div class="detail2">
                            <div class="describe">平安夜</div>
                        </div>
                        <div class="detail2">
                            <div class="describe">NT$1,080</div>
                        </div>
                    </div>
                    <div class="litem">
                        <div class="pic">
                            <a href="hf-item.html">
                                <img src="img/flower/C06.jpg" alt="">
                            </a>
                        </div>
                        <div class="detail2">
                            <div class="describe">蘋蘋安安</div>
                        </div>
                        <div class="detail2">
                            <div class="describe">NT$1,280</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>