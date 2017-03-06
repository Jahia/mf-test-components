<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<template:addResources type="javascript" resources="jquery.min.js" />

<div id="${currentNode.identifier}"></div>
<c:set var="text" value="${currentNode.properties['text'].string}"/>
<script>
$(document).ready(function() {
    $("#${currentNode.identifier}").html( "${text}" );
})
</script>
