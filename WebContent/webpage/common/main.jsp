<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>控制台 - 项目管理系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<jsp:include page="common.jsp" />
</head>
<body>
		<%-- <jsp:include page="common/head.jsp"/> --%>
		<tiles:insertAttribute name="header"/>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<tiles:insertAttribute name="menu"/>
				<tiles:insertAttribute name="body"/>
				
				</div>

			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
</body>

<!-- ace scripts -->
<script src="${pageContext.request.contextPath}/static/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/ace.min.js"></script>

</html>