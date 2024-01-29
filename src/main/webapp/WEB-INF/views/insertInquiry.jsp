<%--
  Created by IntelliJ IDEA.
  User: taesoo
  Date: 2024-01-26
  Time: 오후 3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Gong-Home</title>
</head>
<link href="../../css/index.css" rel="stylesheet"  type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
        <div class="body-section1">
            <form name="contentsForm" action="/inquiry/insertInquiry" method="post">
                <input name="title" placeholder="제목">
                <input name="contents" placeholder="내용을 적어주세요.">
                <button type="button" onclick="submitForm()">제출</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
<script>
    function submitForm(){
        const titleValid = $(`input[name=title]`).val();
        const bodyValid = $(`input[name=contents]`).val();

        if (titleValid == null) {
            alert("제목을 입력해 주세요")
        }else if (bodyValid == null) {
            alert("내용을 입력해 주세요.")
        }else {
            $(`form[name=contentsForm]`).submit();
        }
    }
</script>

