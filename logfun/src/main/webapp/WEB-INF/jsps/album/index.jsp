<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html><head><title>浮光掠影</title>	<%@ include file="/WEB-INF/jsps/common/head.jsp"%>    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">    <link rel="stylesheet" href="/css/layui.css" media="all"></head><body class="relative"><!-- 照片时间线区块 --><div id='albumDiv' class="container">  <div class="layui-row">	   <fieldset>           <legend>               <a>个人相册</a>               <div class="layui-btn-group" style="float:right;">                   <button class="layui-btn layui-btn-primary layui-btn-sm" style="border: 0px;" onclick="baseFun.addAlbum()" title="新建相册">                       <i class="layui-icon">&#xe654;</i>                   </button>                   <button class="layui-btn layui-btn-primary layui-btn-sm" style="border: 0px;" onclick="alert(1)" title="删除相册">                       <i class="layui-icon">&#xe640;</i>                   </button>               </div>           </legend>	   </fieldset>	<div id='albumTl' style='padding-left:50px;overflow:auto;height:800px;overflow-y:auto;overflow-x:hidden;border-right:solid 1px #e5e5e5;' class="layui-col-md4">		<ul class="layui-timeline">			<c:forEach items="${albums}" var="album">			  <li class="layui-timeline-item">			    <i class="layui-icon layui-timeline-axis" onclick="alert(5)"></i>			    <div class="layui-timeline-content layui-text">				      <h3 class="layui-timeline-title">${album.updateTime}</h3>				      <a href="javascript:void(0);" onclick="baseFun.openAlbum(${album.id})">${album.title}</a>			    </div>			  </li>			</c:forEach>            <li class="layui-timeline-item">                <i class="layui-icon layui-timeline-axis">&#xe63f;</i>                <div class="layui-timeline-content layui-text">                    <div class="layui-timeline-title">END</div>                </div>            </li>		</ul>	</div>    <div id="currentAlbumId" style="visibility: hidden;">${album.id}</div>	<div id='albumDt' class="layui-col-md8"style="height:800px;overflow-y:auto;overflow-x:hidden;padding:20px;">        ${album.content}	</div>   </div></div>    <script type="text/javascript" src="/js/album/album.js"></script></body></html>