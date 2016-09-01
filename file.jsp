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
    <title>中央選舉委員會 - 檔案下載</title>
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.min.css">
    <link rel="stylesheet" href="/bootstrap-treeview/bootstrap-treeview.css"/>
    <style>

    </style>
    <script>
      var data = [<%=request.getAttribute("FileData")!=null?request.getAttribute("FileData"):""%>];
      <%--var data = <%=request.getAttribute("FileData")!=null?request.getAttribute("FileData"):""%>;--%>
    </script>
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
        <div class="col-xs-5 col-md-5 overflowy>
          <div id="fileslist"></div>
        </div>
        <div class="col-xs-7 col-md-7">
            <button type="button" class="btn btn-primary pos-right">下載選取檔案</button>
            <div id="file" class="file-list"></div>
        </div>
      </div>
    </div>
    <footer><a href="#" title="資訊安全政策">資訊安全政策</a> | <a href="#" title="隱私權政策">隱私權政策</a>
      <div class="copyw">Copyright© 中央選舉委員會 版權所有 (郵遞區號:10055) 臺北市徐州路5號10樓 電話: (02)23565484 傳真: (02)23976898</div>
    </footer>
  </div>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <script src="/bootstrap-treeview/bootstrap-treeview.min.js"></script>
    <script src="treeview.min.js"></script>
</body>
</html>
