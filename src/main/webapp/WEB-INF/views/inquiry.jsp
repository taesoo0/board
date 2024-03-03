<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
      <a class="header-logo" href="/">로고</a>
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
      <div class="body-header">문의글</div>
      <Table id="inquiry-table"></Table>
      <a href="/inquiry/insertForm">글쓰기</a>
    </div>
    <button><a href="/inquiry/insertForm">글쓰기</a></button>
  </div>
</div>

</body>
</html>

<script>
  $(document).ready(function () {
      getTable();
  })


  function getTable (){
    $.ajax({
      url:"/inquiry/getInquiryList",
      method: "get",
      contentType:"application/json",
      success: function (res) {
        console.log(res);
        let html = '<tr><td>No</td><td>제목</td><td>작성자</td><td>작성일자</td><td></td></tr>';
        res.forEach((item) => {
          html += '<tr><td><a href="/inquiry/detail/'+ item.id +'">' + item.id + '</a></td><td>' + item.contents + '</td><td>정태수</td><td>' + item.createTime + '</td><td onclick="deleteInquiry('+item.id+')">삭제</td></tr>';
        })
        $("#inquiry-table").append(html);
      },
      error: function (error) {
        console.log(error);
      }
    })
  }

  function deleteInquiry(id) {
    $.ajax({
      url: '/inquiry/delete/'+id,
      method: "delete",
      contentType: "application/json",
      success : (res) => {
        console.log(res);
        window.location = "/inquiry"
      },
      error : (err) => {
        console.log(err);
      }
    })
  }
</script>