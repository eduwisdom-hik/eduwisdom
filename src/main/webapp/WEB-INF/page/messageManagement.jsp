<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <%@ include file="common.jsp" %>
    <title>消息管理--智慧教育资源共享推荐平台</title>
    <script src="<%=basePath%>js/page/messageManagement.js"></script>
</head>

<c:import url="head.jsp" />
<div id="content">
    <div id="content-header">
        <div id="breadcrumb">
            <a href="javascript:void(0);" title="管理中心" class="tip-bottom"> <i class="icon-wrench"></i> 管理中心 </a>
            <a href="javascript:void(0);" title="消息管理" class="tip-right"> 消息管理 </a>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-content nopadding">
                        <div class="controls controls-row">
                            <input type="text" id="username" class="span2 m-wrap" placeholder="消息内容">
                            </select>
                            <input type="text" id="queryStartDate" class="span2 m-wrap" placeholder="开始日期"
                                   onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'queryEndDate\')||\'2099-12-31\'}'})">
                            <input type="text" id="queryEndDate" class="span2 m-wrap" placeholder="结束日期"
                                   onfocus="WdatePicker({minDate:'#F{$dp.$D(\'queryStartDate\')}',maxDate:'2099-12-31'})">
                            <button type="submit" id="query" class="span2 btn btn-success" onclick="load()"> <i class="icon-search"></i> 查询 </button>
                            <button type="submit" id="addBatch" class="span2 btn btn-danger"> <i class="icon-remove-sign"></i> 批量删除 </button>
                        </div>
                    </div>
                </div>

                <div class="widget-box">
                    <div class="widget-content ">
                        <div id="tableDiv"></div>
                        <div id="tableDivPage"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="foot.jsp" %>