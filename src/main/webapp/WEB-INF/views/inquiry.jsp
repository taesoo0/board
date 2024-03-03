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
      <a class="header-logo" href="/">LOGO</a>
      <nav class="header-li-wrapper">
        <li>소개</li>
        <li>제품설명</li>
        <li>다운로드</li>
        <li><a href="/inquiry">문의글</a></li>
      </nav>
      <div></div>
    </div>
  </div>
  <div class="body-section-wrapper">
    <div>
      <div class="body-header">
        <div>
          Q&A
        </div>
      </div>
      <Table id="inquiry-table">
        <colgroup>
          <col style="width: 7.5%;"/>
          <col style="width: 55%;"/>
          <col style="width: 10%;"/>
          <col style="width: 20%;"/>
          <col style="width: 7.5%;"/>
        </colgroup>
        <thead>
          <tr>
            <td>No</td>
            <td>제목</td>
            <td>작성자</td>
            <td>작성일자</td>
            <td></td>
          </tr>
        </thead>
        <tbody id="table-list"></tbody>
      </Table>
    </div>
    <div class="body-footer">
      <div class="input-wrapper">
        <div>
          <input type="text" placeholder="Search"/>
          <img src="../../img/search.png" />
        </div>
      </div>
      <a href="/inquiry/insertForm">글쓰기</a>
    </div>
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
        let html = '';
        res.forEach((item) => {
          html += '<tr><td><a href="/inquiry/detail/'+ item.id +'">' + item.id + '</a></td><td>' + item.contents + '</td><td>정태수</td><td>' + item.createTime + '</td><td onclick="deleteInquiry('+item.id+')">삭제</td></tr>';
        })
        $("#table-list").append(html);
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