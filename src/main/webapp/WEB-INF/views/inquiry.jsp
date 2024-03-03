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
      <Table id="inquiry-table"></Table>
      <a href="/inquiry/insertForm">글쓰기</a>
    </div>
  </div>
</div>

</body>
</html>

<script>

  $(document).ready(function () {
      console.log("gdg");
      getTable();
  })


  function getTable (){
    $.ajax({
      url:"/inquiry/getInquiryList",
      method: "get",
      contentType:"application/json",
      success: function (res) {
        console.log(res);
        let html = '<tr><td>No</td><td>제목</td><td>작성자</td><td>작성일자</td></tr>';
        res.forEach((item) => {
          html += '<tr><td>'+item.id+'</td><td>'+item.contents+'</td><td>정태수</td><td>'+item.createTime+'</td></tr>'
        })
        $("#inquiry-table").append(html);
      },
      error: function (error) {
        console.log(error);
      }
    })
  }
</script>