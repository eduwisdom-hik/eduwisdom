<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--admin roleId : 3791532340293158876 --%>
<%@ include file="homeUrlParam.jsp" %>
<body>
<div id="header">
    <h1></h1>
</div>

<div id="user-nav" class="navbar navbar-inverse">
    <ul class="nav">
        <li class="dropdown" id="menu-messages">
            <a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle">
                <i class="icon icon-envelope"></i>
                <span class="text">消息</span>
                <span class="label label-important" id='unreadSum'></span> <b class="caret"></b>
            </a>
            <ul class="dropdown-menu" id='myMsgUnread'></ul>
        </li>

        <li class="dropdown" id="profile-messages">
            <a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle">
                <i class="icon icon-user"></i> <span class="text" id='realname'></span><b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
                <li><a href="#updatePasswordModel" data-toggle='modal' onclick="changePasswordUI()"><i class="icon-pencil"></i>修改密码</a></li>
                <c:if test="${ sessionScope.roleId == '3791532340293158876'}">
                    <li class="divider"></li>
                    <li><a href="javascript:void(0);" onclick="publishNotice()"><i class="icon-bullhorn"></i>发布消息</a></li>
                </c:if>
            </ul>
        </li>
        <li><a title="退出" href="javascript:void(0);" onclick="exit()"><i class="icon-off"></i> 退出</a></li>
    </ul>
</div>

<div id="sidebar">
    <a href="<%= basePath %>index/forwardMainUI.do" class="visible-phone"><i class="icon icon-home"></i></a>
    <ul>
        <li class="submenu" id='ul0Parent'>
            <a href="javascript:void(0);"><i class="icon-home"></i> <span>快速导航</span><i class="icon-chevron-right"></i></a>
            <ul id="ul0">
                <li><a href="<%= basePath %>index/forwardMainUI.do" id="main">快速导航</a></li>
            </ul>
        </li>
        <li class="submenu" id='ul1Parent'>
            <a href="javascript:void(0);"> <i class="icon-cogs"></i> <span>个人中心</span> <i class="icon-chevron-right"></i> </a>
            <ul id="ul1">
                <li><a href="<%= basePath %>user/forwardUserInfoUI.do" id="userInfo">用户信息</a></li>
                <li><a href="<%= basePath %>message/forwardUserMessageUI.do" id="userMessage">用户消息</a></li>
            </ul>
        </li>
        <li class="submenu" id='ul2Parent'>
            <a href="javascript:void(0);"><i class="icon-shopping-cart"></i> <span>资源中心</span><i class="icon-chevron-right"></i></a>
            <ul id="ul2">
                <li><a href="<%= basePath %>resource/forwardUserResourceUI.do" id="userResource">用户资源</a></li>
                <li><a href="<%= basePath %>resource/forwardSystemResourceUI.do" id="systemResource">系统资源</a></li>
                <li><a href="<%=basePath %>resource/forwardCompanyResourceUI.do" id="companyResource">教育机构资源</a></li>
                <li><a href="<%= basePath %>resource/forwardFindResourceUI.do" id="findResource">资源地图分布</a></li>
                <li><a href="<%= basePath %>browseRecord/forwardResourceBrowseRecordUI.do" id="resourceBrowseRecord">资源浏览记录</a></li>
                <li><a href="<%= basePath %>downloadRecord/forwardResourceDownloadRecordUI.do" id="resourceDownloadRecord">资源下载记录</a></li>
                <li><a href="<%= basePath %>resource/forwardRecommendedResourceUI.do" id="recommendedResource">个性化推荐</a></li>
                <li><a href="<%= basePath %>comment/forwardCommentResourceUI.do" id="commentResource">我的评论</a></li>
                <c:if test="${ sessionScope.roleId =='3791532340293158876'}">
                    <li><a href="<%= basePath %>resource/forwardVerifyResourceUI.do" id="verifyResource">资源审核</a></li>
                </c:if>
                
            </ul>
        </li>
        <li class="submenu" id='ul3Parent'>
            <a href="javascript:void(0);"><i class="icon-list"></i> <span>日志中心</span><i class="icon-chevron-right"></i></a>
            <ul id="ul3">
                <li><a href="<%= basePath %>log/forwardUserLogUI.do" id="userLog">用户日志</a></li>
                <c:if test="${ sessionScope.roleId =='3791532340293158876'}">
                    <li><a href="<%= basePath %>log/forwardSystemLogUI.do" id="systemLog">系统日志</a></li>
                </c:if>
            </ul>
        </li>
        <c:if test="${ sessionScope.roleId =='3791532340293158876'}">
            <li class="submenu" id='ul4Parent'>
                <a href="javascript:void(0);"><i class="icon-wrench"></i> <span>管理中心</span><i class="icon-chevron-right"></i></a>
                <ul id="ul4">
                    <li><a href="<%= basePath %>manage/forwardUserManagementUI.do" id="userManagement">用户管理</a></li>
                    <li><a href="<%= basePath %>manage/forwardResourceManagementUI.do" id="resourceManagement">资源管理</a>
                    </li>
                </ul>
            </li>
        </c:if>
    </ul>
</div>

<div id="updatePasswordModel" class="modal hide">
    <div class="modal-header">
        <button data-dismiss="modal" class="close" type="button">×</button>
        <h3>修改密码</h3>
    </div>
    <div class="modal-body">
        <form class="form-horizontal" method="post" name="basic_validate">
            <div class="control-group">
                <label class="control-label">原密码:</label>
                <div class="controls">
                    <input id="oldPassword" type="password" name="oldPassword" style="height:28px;"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">新密码:</label>
                <div class="controls">
                    <input id="password" type="password" name="password" style="height:28px;"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">重复密码:</label>
                <div class="controls">
                    <input id="rePassword" type="password" name="rePassword" style="height:28px;"/>
                </div>
            </div>
        </form>
    </div>
    <div class="modal-footer">
        <div id='msg'></div>
        <a data-dismiss="modal" class="btn" href="javascript:void(0);"> <i class="icon-remove"></i>取消</a>
        <a class="btn btn-success" href="javascript:void(0);" onclick="changePassword()"> <i class="icon-ok"></i>确定</a>
    </div>
</div>