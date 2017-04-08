<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/WEB-INF/views/portal-common/portal-tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>校友论坛-信电校友录</title>
<%@ include file="/WEB-INF/views/portal-common/portal-meta.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/portal-common/header.jsp"%>

	<%@ include file="/WEB-INF/views/portal-common/navmenu.jsp"%>


	<div class="banner-bottom">
		<div class="container higher" id="container">
			<section>
				<!-- 导航栏 -->
				<div class="header">
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i>&nbsp;<a href="index.action">主页</a></li>
						<li class="active">校友论坛</li>
					</ol>
				</div>

				<div class="page-header">
					<%@ include file="/WEB-INF/views/forum/forum-button.jsp"%>
					<h3>招聘信息</h3>
				</div>
				<!-- 	<p>招聘信息</p> -->
				<div class="table-responsive">
					<div class="dataTables_wrapper no-footer">
						<table class="table table-striped" id="table">

							<thead>
								<tr>
									<th>标题</th>
									<th>招聘单位</th>
									<th>薪水</th>
									<th>发布时间</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.beanList}" var="recruit">
									<tr>
										<td id="${recruit.recruitId}">&nbsp;<a
											href="recruit/detailRecruit.action?recruitId=${recruit.recruitId}"
											target="_blank"> ${recruit.title}</a> 
											<ar:top value="${recruit.isTop}" /></td>
										<td>${recruit.unitName}</td>
										<td><ar:dictdata dictdata="${recruit.salary}" dict="sl" /></td>
										<td><fmt:formatDate value="${recruit.createTime}"
												pattern="M月d日"></fmt:formatDate></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<%@ include file="/WEB-INF/views/portal-common/pagination.jsp"%>
				</div>
				
			</section>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/portal-common/footer.jsp"%>

</body>
<%@ include file="/WEB-INF/views/portal-common/portal-js.jsp"%>
<script src="assets/script/forum/forum-index.js"></script>
</html>