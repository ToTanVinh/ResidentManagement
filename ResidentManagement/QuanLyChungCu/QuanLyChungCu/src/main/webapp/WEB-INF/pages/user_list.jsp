<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:choose>
    <c:when test="${not empty sessionScope.basename}">
        <fmt:setBundle basename="user_${sessionScope.basename}" scope="session" />
    </c:when>
    <c:otherwise>
        <fmt:setBundle basename="user" scope="session" />
    </c:otherwise>
</c:choose>
<h1 class="text-center text-info mt-4"><fmt:message key="title"/></h1>
<div class="d-flex justify-content-between mb-3 align-items-end">
    <div class="d-flex align-items-center">
        <a style="height: 40px" href="/QuanLyChungCu/users/" class="btn btn-success"><fmt:message key="addUser"/></a>
    </div>

    <form action="<c:url value="/users" />" class="d-flex align-items-end">
        <div class="me-4"> 
            <input style="width: 140px" class="form-control me-2" name="username" type="search" placeholder="<fmt:message key="username"/>">
        </div>
        <div class="me-4"> 
            <input style="width: 140px" class="form-control me-2" name="email" type="search" placeholder="Email...">
        </div>
        <div class="me-4"> 
            <input style="width: 140px" class="form-control me-2" name="phone" type="search" placeholder="<fmt:message key="phone"/>...">
        </div>
        <div class="me-4">
            <label class="d-flex justify-content-center mb-2" for="status"><fmt:message key="status"/></label>
            <select style="width: 160px" class="form-select" id="status" name="status" path="status">
                <option value="Active" selected><fmt:message key="active"/></option>
                <option value="Block"><fmt:message key="block"/></option>
            </select>
        </div> 
    
        <div class="me-4">
            <label class="d-flex justify-content-center mb-2" for="room"><fmt:message key="room"/></label>
            <select style="width: 140px" class="form-select" id="room" name="room">
                <c:forEach items="${roomsUsing}" var="r">
                    <option value="${r.id}">${r.name}</option>
                </c:forEach>
            </select>
        </div>
        <button class="btn btn-primary" type="submit"><fmt:message key="search"/></button>
    </form>
</div>
<table class="table table-hover mt-4">
    <tr>
        <th><fmt:message key="id"/></th> 
        <th><fmt:message key="username"/></th>
        <th><fmt:message key="firstname"/></th>
        <th><fmt:message key="lastname"/></th>
        <th><fmt:message key="email"/></th>
        <th><fmt:message key="phone"/></th>
        <th><fmt:message key="locker"/></th>
        <th><fmt:message key="status"/></th>
        <th><fmt:message key="avatar"/></th>
        <th><fmt:message key="room"/></th>
        <th><fmt:message key="action"/></th>
    </tr>
    <c:forEach items="${users}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.username}</td>
            <td>${u.firstname}</td>
            <td>${u.lastname}</td>
            <td>${u.email}</td>
            <td>${u.phone}</td>
            <td>${u.locker.id}</td>
            <td>
                <c:choose>
                    <c:when test="${u.status == 'Active'}">
                        <p class="text-success">${u.status}</p>
                    </c:when>
                    <c:otherwise>
                        <p class="text-danger">${u.status}</p>
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${u.avatar != null}">
                        <img class="rounded img-fluid" src="${u.avatar}" width="200" alt="${u.avatar}">
                    </c:when>
                    <c:otherwise>
                        -----
                    </c:otherwise>
                </c:choose>
            </td>
            <td>${u.room.name}</td>
            <td>
                <c:choose>
                   <c:when test="${u.status != 'Block'}">
                        <c:url value="/api/users/block/${u.id}" var="url" />
                        <button onclick="blockUser('${url}')" class="btn btn-danger"><fmt:message key="block"/></button>
                    </c:when>
                </c:choose>
                <c:url value="/users/${u.id}" var="url" />
                <a href="${url}" class="btn btn-info"><fmt:message key="update"/></a>
            </td>
        </tr>
    </c:forEach>
</table>

<div class="d-flex justify-content-end">
    <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
        <div class="btn-group me-2" role="group" aria-label="First group">
            <c:choose>
                <c:when test="${totalPages > 3}">
                    <c:choose>
                        <c:when test="${currentPage > 2}">
                            <button type="button" class="btn btn-outline-secondary"
                                    onclick="window.location.href = '/QuanLyChungCu/users?page=1'">1</button>
                            <button type="button" class="btn btn-outline-secondary">...</button>
                        </c:when>
                        <c:otherwise>
                            <c:forEach begin="1" end="3" varStatus="loop">
                                <button type="button" class="btn btn-outline-secondary"
                                        onclick="window.location.href = '/QuanLyChungCu/users?page=${loop.index}'">${loop.index}</button>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                </c:when>
                <c:otherwise>
                    <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                        <button type="button" class="btn btn-outline-secondary"
                                onclick="window.location.href = '/QuanLyChungCu/users?page=${loop.index}'">${loop.index}</button>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>

<script src="<c:url value="/js/script.js" />"></script>