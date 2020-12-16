<%--
  Created by IntelliJ IDEA.
  User: chois
  Date: 2020-12-16
  Time: 오전 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>정보수정</title>
    <style>
        #mypageMenu{
            list-style: none;
            color:white;
            display:flex;
            font-size: 20px;
            justify-content: space-around;
            align-items: center;
        }

        #mypageMenu a {
            text-decoration: none;
            color:white;

        }

        #mypageMenu a:hover{color: rgb(236, 191, 46);}

        #btnGroup{ margin-left: 30px;}

        #btnGroup span{color :white;}

        #userInfo{display:none;}
        #changePwd{display: none;}
        #userInfo li{list-style: none;}
        #userInfo span{ color:white;}
        .subBtn{ margin-left: 30px;}
        #changePwd li{list-style: none;}
        #changePwd span{ color:white;}
        #deleteMember{display: none;}
        #deleteMember li{color:white;}

    </style>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<br>
<hr style="height:2px;border-width:0;color:white;background-color:white">



<div id="header">
    <ul id="mypageMenu">
        <li><a href="update.me">정보수정</a></li>
        <li><a href="review.me">나의리뷰</a></li>
        <li><a href="point.me">포인트내역</a></li>
        <li><a href="event.me">이벤트신청현황</a></li>
        <li><a href="group.me">공구신청현황</a></li>
        <li><a href="beer.me">맥주신청현황</a></li>
        <li><a href="category.me">나만의카테고리</a></li>
    </ul>
</div>

<hr style="height:2px;border-width:0;color:white;background-color:white">
<br><br>
<div class="btn-group" id="btnGroup" >
    <button type="button" class="btn btn-warning" id="info" onclick="info();"><span>회원정보</span></button>
    <button type="button" class="btn btn-warning" id="chPwd" onclick="chPwd();" ><span>비밀번호</span> </button>
    <button type="button" class="btn btn-warning" id="delete" onclick="d();" ><span>회원탈퇴</span></button>
</div>

<script>
    function info(){
        $("#userInfo").show();
        $("#changePwd").hide();
        $("#deleteMember").hide();
    }

    function chPwd(){
        $("#userInfo").hide();
        $("#deleteMember").hide();
        $("#changePwd").show();
    }

    function d(){
        $("#deleteMember").show();
        $("#userInfo").hide();
        $("#changePwd").hide();
    }
</script>

<br><br>

<form action="member.me" method="POST">
    <div id="userInfo">
        <ul>
            <li><span>*아이디</span> <input  type="text" value="Beerking" readonly> </li>
            <li><span>이름</span> <input type="text" value="최성주" name="userName"></li>
            <li>
                <span>성별</span> <span>M</span> <input type="radio" name="gender" value="M" checked>
                <span>F</span> <input type="radio"name="gender" value="F">
            </li>
            <li><span>나이</span> <input type="number" name="age" value="25"> </li>
            <li><span>전화번호</span> <input type="text"  name="phone" value="010-5761-0000" ></li>
            <li><span>이메일</span> <input type="email" name="email" value="tjdwnn032@naver.com"></li>
            <li><span>주소</span> <input type="text" name="address" value="주소"></li>
            <li><span>생년월일</span> <input type="text" name="birth" value=960418></li>
        </ul>

        <div align="left" class="subBtn">
            <button type="submit" class="btn btn-warning">수정하기</button>
        </div>

    </div>
</form>

<form action="" method="POST">
    <div id="changePwd">
        <ul>
            <li> <span>아이디 : BeerKing</span> </li>
            <li> <span>현재비밀번호 :</span> <input type="password" name="password"> </li>
            <li> <span>신규비밀번호 : </span> <input type="password" name="newPwd"> </li>
            <li> <span>신규비밀번호 확인 : </span> <input type="password"> </li>
        </ul>

        <div align="left" class="subBtn">
            <button type="button" class="btn btn-warning">취소</button>
            <button type="submit" class="btn btn-warning">수정</button>
        </div>
    </div>
</form>

<form action="" method="POST">
    <div id="deleteMember">
        <ol>
            <li><span>탈퇴할거유?진짜루?</span> </li>
            <li><span>탈퇴할거유?진짜루?</span></li>
            <li><span>탈퇴할거유?진짜루?</span></li>
        </ol>

        <!-- Button to Open the Modal -->
        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal" style="margin-left: 20px;">
            탈퇴하기
        </button>

        <!-- The Modal -->
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">회원 탈퇴</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        현재 비밀번호를 입력해주세요
                        <input type="password" name="pwd" >
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-danger" data-dismiss="modal">탈퇴</button>
                    </div>

                </div>
            </div>
        </div>
    </div>

</form>
</body>
</html>
