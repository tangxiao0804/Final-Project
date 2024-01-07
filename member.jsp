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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>初栖會員</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
        </script>
    <script src="https://kit.fontawesome.com/4b9549b686.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/member.css">
    <link rel="shortcut icon" href="img/logo/logo.png" type="image/x-icon">
</head>

<body>
    <header>
        <%@include file="header.jsp"%>
    </header>
    </div>

    <main>
        <div class="containnav">
            <div>
                <div class="my_icon">
                    <input type="button" value="我的資料" onclick="showPage(1)">
                </div>
                <div class=" history">
                    <input type="button" value="我的訂單" onclick="showPage(2)">
                </div>
            </div>
        </div>
        <div class="list-item">
            <div id="page1">
                <div class="mcontain">
                    <div class="mleft">
                        <div class="mcard">
                            <div class="border">
                                <div class="col main-info">
                                    <div class="d-flex">
                                        <h6>一般會員</h6>
                                    </div>
                                    <p>帳號: 123@gmail.com</p>
                                </div>
                                <div class="down">
                                    <div class="col sub-info">
                                        <span>購物金</span>
                                        <p>
                                            <span class="coin">
                                                "0"
                                            </span>
                                        </p>
                                    </div>
                                    <div class="col sub-info">
                                        <span>帳戶餘額</span>
                                        <p>
                                            <span class="coin">
                                                "0"
                                            </span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="outline bill">
                            <div class="btitle">
                                雲端發票設定
                            </div>
                            <div>
                                <a href="https://www.einvoice.nat.gov.tw/portal/btc/btc103w/main/ZXlKaGJHY2lPaUpJVXpJMU5pSXNJblI1Y0NJNklrcFhWQ0o5LlRBMk5EazBPRFVpTENKaVlXTnJYM1Z5YkNJNkltaDBkSEJ6T2k4dmQzZDNMbmRsWVhabGNpNWpiMjB1ZEhjdmFXNTJiMmxqWlM5eVpXTmxhWFpsWDJGd2NHeDVJaXdpWTJGeVpGOTBlWEJsSWpvaVVsVmpkMDVxVlhnaUxDSjBiMnRsYmlJNklqSmtNbU01WVRka01XTmlNVE16TTJSaU9HVXdaRFJtWm1NNE56VTNOVFJoSWl3aVpYaHdJam94TnpBek5qWXdNRGs0ZlFleUpqWVhKa1gyNXZjeUk2SWtOaGNtUk9iM05FVkU5N1kyRnlaRjl6WlhFOUp6RW5MQ0JqWVhKZmJtOHhQU2ROVkZGNFQwUmpQU2NzSUdOaGNtUmZibTh5UFNkTlZGRjRUMFJqUFNkOUlpd2lablZ1WXlJNklrSlVRekV3TTBraUxDSmpZWEprWDI1dk1pSTZJazFVVVhoUFJHTTlJaXdpWTJGeVpGOXViekVpT2lKTlZGRjRUMFJqUFNJc0ltTmhjbVJmWW1GdUlqb2lPLmZzSndWV25SUERXZ01HbHZfdVk3M3VuTDB3MXdkNzJFZm11TVRRbk5XVUk="
                                    target="_blank">
                                    電子發票載具歸戶
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="mright">
                        <form class="outline">
                            <div class="group">
                                <label for="name">用戶名稱</label><br>
                                <input type="text" class="form-control" value="123" name="id">
                            </div>
                            <div class="group">
                                <label for="mail">電子郵件</label><br>
                                <input type="email" class="form-control" value="123@gmail.com" name="mail">
                            </div>
                            <div class="group">
                                <label for="mobile">行動電話</label><br>
                                <input type="text" class="form-control" value="0912345678" name="mobile">
                            </div>
                            <div class="group">
                                <label for="address">地址</label><br>
                                <input type="text" class="form-control" value="台中市西屯區市政北七路87號" name="address">
                            </div>
                            <div class="group">
                                <label for="pwd">密碼修改</label><br>
                                <input type="text" class="form-control" name="pwd">
                            </div>
                            <button type="submit" class="btn">
                                確定修改
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div id="page2">
                <div class="tag">
                    <div class="tabnav">
                        <input type="button" value="全部訂單" onclick="showTag(1)">
                        <input type="button" value="訂單成立" onclick="showTag(2)">
                        <input type="button" value="未繳費" onclick="showTag(3)">
                        <input type="button" value="逾時或取消" onclick="showTag(4)">
                    </div>
                    <div class="tag_list">
                        <div id="tag1">
                            <table class="order">
                                <tr>
                                    <th class="table-title">訂單編號</th>
                                    <th class="table-title">日期</th>
                                    <th class="table-title">總金額</th>
                                    <th class="table-title">訂單狀態</th>
                                    <th class="table-title">出貨狀態</th>
                                    <th class="table-title">操作</th>
                                </tr>
                                <tr>
                                    <td>202312317414</td>
                                    <td>2023/12/31 12:19:22</td>
                                    <td>
                                        <span class="nt-value">1190</span>
                                    </td>
                                    <td>訂單成立</td>
                                    <td>已出貨</td>
                                    <td><input type="button" value="查看訂單" onclick="showPage(3)" class="check"></td>
                                </tr>
                            </table>
                        </div>
                        <div id="tag2">
                            <table class="order">
                                <tr>
                                    <th class="table-title">訂單編號</th>
                                    <th class="table-title">日期</th>
                                    <th class="table-title">總金額</th>
                                    <th class="table-title">訂單狀態</th>
                                    <th class="table-title">出貨狀態</th>
                                    <th class="table-title">操作</th>
                                </tr>
                            </table>
                            <a class="none">暫無資料</a>
                        </div>
                        <div id="tag3">
                            <table class="order">
                                <tr>
                                    <th class="table-title">訂單編號</th>
                                    <th class="table-title">日期</th>
                                    <th class="table-title">總金額</th>
                                    <th class="table-title">訂單狀態</th>
                                    <th class="table-title">出貨狀態</th>
                                    <th class="table-title">操作</th>
                                </tr>
                            </table>
                            <a class="none">暫無資料</a>
                        </div>
                        <div id="tag4">
                            <table class="order">
                                <tr>
                                    <th class="table-title">訂單編號</th>
                                    <th class="table-title">日期</th>
                                    <th class="table-title">總金額</th>
                                    <th class="table-title">訂單狀態</th>
                                    <th class="table-title">出貨狀態</th>
                                    <th class="table-title">操作</th>
                                </tr>
                            </table>
                            <a class="none">暫無資料</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="page3">
            <div class="ordertitle">
                <div class="col1"></div>
                <div class="text-center">訂單明細</div>
                <div class="col1"></div>
            </div>
            <table class="order">
                <thead>
                    <tr>
                        <th class="table-title">商品資訊</th>
                        <th class="table-title">單價</th>
                        <th class="table-title">數量</th>
                        <th class="table-title">小計</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="itemdetail item-info">
                            <div class="item-infoimg">
                                <img src="img/flower/FG03.jpg">
                            </div>
                            <div class="item-infocontent">
                                <div class="item-name">
                                    秘密
                                </div>
                            </div>
                        </td>
                        <td class="item-info">
                            <div class="item-price">
                                1190
                            </div>
                        </td>
                        <td class="item-info">1</td>
                        <td class="item-info">
                            <div class="item-price">
                                1190
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5" class="text-right">
                            購物車小計$1190 +物流費$0 = 總額
                            <span class="amount">
                                1190
                            </span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="order-wrapper">
                <div class="col1 flex">
                    <div class="account-outline">
                        <div class="form-title">
                            訂單資訊
                        </div>
                        <table class="tabledetail">
                            <tbody>
                                <tr>
                                    <th>訂單編號</th>
                                    <td>202312317414</td>
                                </tr>
                                <tr>
                                    <th>訂購時間</th>
                                    <td>2023/12/31 12:19:22</td>
                                </tr>
                                <tr>
                                    <th>訂單狀態</th>
                                    <td>訂單成立</td>
                                </tr>
                                <tr>
                                    <th>付款方式</th>
                                    <td>信用卡</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="account-outline">
                        <div class="form-title">
                            訂購人
                        </div>
                        <table class="tabledetail">
                            <tbody>
                                <tr>
                                    <th>姓名</th>
                                    <td>帥哥</td>
                                </tr>
                                <tr>
                                    <th>手機</th>
                                    <td>0912345678</td>
                                </tr>
                                <tr>
                                    <th>E-mail</th>
                                    <td>a123456@gmail.com</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="account-outline">
                        <div class="form-title">
                            收件資訊
                        </div>
                        <table class="tabledetail">
                            <tbody>
                                <tr>
                                    <th>收件方式</th>
                                    <td>宅配</td>
                                </tr>
                                <tr>
                                    <th>地址</th>
                                    <td>桃園市中壢區中北路200號</td>
                                </tr>
                                <tr>
                                    <th>收件人</th>
                                    <td>美女</td>
                                </tr>
                                <tr>
                                    <th>連絡電話</th>
                                    <td>0987654321</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="account-outline1"></div>
                </div>
            </div>
        </div>

        <script src="js/member.js"></script>
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

</html>