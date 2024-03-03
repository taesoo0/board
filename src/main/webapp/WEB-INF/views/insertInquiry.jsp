<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Gong-Home</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<link href="../../css/insertInquiry.scss" rel="stylesheet" type="text/css">
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
      <form id="insertForm" action= "/inquiry/insertInquiry" method="post" class="insert-wrapper">
        <input name="title" type="text">
        <input name="contents" type="text" class="insert-section"/>
        <button type="button" onclick="checkForm()">글쓰기</button>
      </form>
    </div>
  </div>
</div>

</body>
</html>

<script>

  function checkForm () {
    const formTitle = $(`input[name=title]`).val();
    const formContents = $(`input[name=contents]`).val();
    console.log(formContents);
    console.log(formTitle)

    if(formTitle == null){
      alert("제목을 입력해주세요.")
    }else if(formContents == null){
      alert("내용을 입력해주세요.")
    }else {
      $("#insertForm").submit();
    }
  }

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