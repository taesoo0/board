<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Gong-Home</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<link href="../../css/index.css" rel="stylesheet" type="text/css">
<body>
<div class="body">
    <div class="header-section-wrapper">
        <div class="header-section">
            <div class="header-logo">로고</div>
            <nav class="header-li-wrapper">
                <li>소개</li>
                <li>제품설명</li>
                <li>다운로드</li>
                <li><a href="/inquiry">문의글</a></li>
            </nav>
        </div>
    </div>
    <div class="body-section-wrapper">
        <div>
            <div class="body-header">문의 수정</div>
            <form id="updateForm" method="POST" action="/inquiry/update">
                <div>작성일자</div><div>${inquiry.createTime}</div>
                <input type="text" name="title" value="${inquiry.title}" />
                <input type="text" name="contents" value="${inquiry.contents}" />
                <input type="hidden" name="id" value="${inquiry.id}" />
            </form>
            <button type="button" onclick="submit()">저장</button>
        </div>
    </div>
</div>

</body>
</html>

<script>
    function submit(){
        console.log($("input[name='title']").val());
        console.log($("input[name='contents']").val());
        if($("input[name='title']").val().trim() === ""){
            alert("제목을 입력해주세요.");
            return
        } else if($("input[name='contents']").val().trim() === ""){
            alert("내용을 입력해주세요.");
            return
        }

        $("#updateForm").submit();
    }

</script>