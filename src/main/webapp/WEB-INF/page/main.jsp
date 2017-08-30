<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--admin roleId : 3791532340293158876 --%>
<%--third-party roleId : 3791532340293158874 --%>

<html>
<head>
    <%@ include file="common.jsp" %>
    <title>智慧教育资源共享推荐平台</title>
    <script src="<%=basePath%>echarts/echarts.js"></script>
    <script src="<%=basePath%>js/page/main.js"></script>
    <script src="<%=basePath%>js/page/showecharts.js"></script>
</head>

<c:import url="head.jsp"/>
<div id="content">
    <div id="box">
        <div id="content-header">
            <div id="breadcrumb">
                <a href="#" title="首页" class="tip-bottom"> <i class="icon-th"></i>快速导航</a>
            </div>
        </div>
        <div class="container-fluid">
			<table>
				<tr>
					<td>
						<div class="row-fluid">
							<div class="span12">
								<div class="quick-actions_homepage">
									<ul class="quick-actions">
										<li class="bg_ly span2"><a
											href="<%=basePath%>user/forwardUserInfoUI.do"> <i
												class="icon-user"></i>用户信息
										</a></li>
										<li class="bg_ly span2"><a
											href="<%=basePath%>message/forwardUserMessageUI.do"> <i
												class="icon-bell"></i>用户消息
										</a></li>
										<li class="bg_ls span2"><a
											href="<%=basePath%>resource/forwardUserResourceUI.do"> <i
												class="icon-bar-chart"></i>用户资源
										</a></li>
										<li class="bg_ls span2"><a
											href="<%=basePath%>resource/forwardSystemResourceUI.do">
												<i class="icon-barcode"></i>系统资源
										</a></li>
										<li class="bg_ls span2"><a
											href="<%=basePath%>resource/forwardCompanyResourceUI.do"><i
												class="icon-briefcase"></i>教育机构资源</a></li>
									</ul>
								</div>
								<div class="quick-actions_homepage">
									<ul class="quick-actions">
										<li class="bg_ls span2"><a
											href="<%=basePath%>browseRecord/forwardResourceBrowseRecordUI.do">
												<i class="icon-share"></i>资源浏览记录
										</a></li>
										<li class="bg_ls span2"><a
											href="<%=basePath%>downloadRecord/forwardResourceDownloadRecordUI.do">
												<i class="icon-download-alt"></i>资源下载记录
										</a></li>
										<c:if test="${ sessionScope.roleId !='3791532340293158876'}">
											<li class="bg_ls span2"><a
												href="<%=basePath%>resource/forwardRecommendedResourceUI.do">
													<i class="icon-magic"></i>个性化推荐
											</a></li>
											<li class="bg_ls span2"><a
												href="<%=basePath%>comment/forwardCommentResourceUI.do">
													<i class="icon-comments"></i>我的评论
											</a></li>
											<li class="bg_lo span2"><a
												href="<%=basePath%>log/forwardUserLogUI.do"> <i
													class="icon-bookmark"></i>用户日志
											</a></li>
										</c:if>
										<c:if test="${ sessionScope.roleId =='3791532340293158876'}">
											<li class="bg_ls span2"><a
												href="<%=basePath%>resource/forwardVerifyResourceUI.do">
													<i class="icon-eye-open"></i>资源审核
											</a></li>
											<li class="bg_lg span2"><a
												href="<%=basePath%>manage/forwardUserManagementUI.do"> <i
													class="icon-group"></i>用户管理
											</a></li>
											<li class="bg_lg span2"><a
												href="<%=basePath%>manage/forwardResourceManagementUI.do">
													<i class="icon-globe"></i>资源管理
											</a></li>
										</c:if>
									</ul>
								</div>
							</div>

						</div>
						<div class="row-fluid">
							<div class="span11">
								<div class="portlet box blue">
									<div class="portlet-title">
										<div class="caption">
											<i class="icon-reorder"></i>统计图表
										</div>
										<div class="tools">
											<a href="javascript:;" class="collapse"></a>
										</div>
									</div>
									<div class="portlet-body" style="display: block;">
									    <table style="width:100%;">
									       <tr>
									           <td id="barbyrole" style="width: 350px;height:220px; "></td>
									           <td id="piebyrole" style="width: 530px;height:220px; "></td>
									       </tr>
									       <tr>
									           <td id="barbyresourcetype" style="width: 350px;height:220px; "></td>
									           <td id="piebyresourcetype" style="width: 530px;height:220px; "></td>
									       </tr>
									    </table>
									    <div id="line" style="width: 800px;height:220px;">
									    </div>
									</div>
								</div>
							</div>
						</div>

					</td>
					<td>
							<div class="span5">
								<div class="portlet box red">
									<div class="portlet-title">
										<div class="caption">
											<i class="icon-reorder"></i>最新学习资源列表
										</div>
										<div class="tools">
											<a href="javascript:;" class="collapse"></a>
										</div>
									</div>
									<div class="portlet-body" style="display: block;">
										<ol id="newestResource">
										</ol>
									</div>
								</div>
								<div class="portlet box red">
									<div class="portlet-title">
										<div class="caption">
											<i class="icon-reorder"></i>热门资源列表
										</div>
										<div class="tools">
											<a href="javascript:;" class="collapse"></a>
										</div>
									</div>
									<div class="portlet-body" style="display: block;">
										<ol id="hotResource">
										</ol>
									</div>
								</div>
								<div class="portlet box red">
									<div class="portlet-title">
										<div class="caption">
											<i class="icon-reorder"></i>基于搜索内容的个性化推荐列表
										</div>
										<div class="tools">
											<a href="javascript:;" class="collapse"></a>
										</div>
									</div>
									<div class="portlet-body" style="display: block;">
										<ol id="searchRecommendationResource">
										</ol>
									</div>
								</div>
							</div>
					</td>
				</tr>
			</table>
		</div>
    </div>
</div>

<%@ include file="foot.jsp" %>