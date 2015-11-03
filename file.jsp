<%--
  Created by IntelliJ IDEA.
  User: simon
  Date: 2015/9/14
  Time: 下午 01:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File JSP</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<%--<script src="filetree.js"></script>--%>
    <script>
      var data = <%=request.getAttribute("FileData")!=null?request.getAttribute("FileData"):""%>;
	    // $(function(){
		   //  $('.easy-tree').filetree({data:data});
	    // })
    </script>
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="easyTree.css">
</head>
<body>
<div id="wrapper">
    <div role="navigation" class="navbar navbar-default header-bg">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <a href="#" class="navbar-brand" title="中央選舉委員會">中央選舉委員會</a> </div>
        <!-- Collection of nav links, and menu content for toggling -->
      </div>
    </div>
    <div class="container">
      <div class="wrap col-xs-12 col-md-12">
        <div class="easy-tree-title">檔案下載</div>
        <div class="col-xs-5 col-md-5">
          <div class="easy-tree"></div>
        </div>
        <div class="col-xs-7 col-md-7">
          <div id="file" class="file-list">

          </div>
        </div>
      </div>
    </div>
    <footer><a href="#" title="資訊安全政策">資訊安全政策</a> | <a href="#" title="隱私權政策">隱私權政策</a>
      <div class="copyw">Copyright© 中央選舉委員會 版權所有 (郵遞區號:10055) 臺北市徐州路5號10樓 電話: (02)23565484 傳真: (02)23976898</div>
    </footer>
  </div>
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
  <script src="easyTree.js"></script>
  <script src="treeview.js"></script>
</body>
</html>
