<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:choose>
    <c:when test="${not empty sessionScope.basename}">
        <fmt:setBundle basename="order_${sessionScope.basename}" scope="session" />
    </c:when>
    <c:otherwise>
        <fmt:setBundle basename="order" scope="session" />
    </c:otherwise>
</c:choose>

<h1 class="text-center text-info mt-4"><fmt:message key="title"/></h1>
<c:if test="${!empty errMsg}">
    <div class="alert alert-danger">${errMsg}</div>
</c:if>
<div class="d-flex justify-content-between mb-3 align-items-end">
    <div class="d-flex align-items-center">
        <a href="/QuanLyChungCu/orders/" type="button" class="btn btn-success"><fmt:message key="addOrder"/></a>
    </div>

    <form action="<c:url value="/orders" />" class="d-flex mt-4 align-items-end">
        <div class="me-4">
            <label class="d-flex justify-content-center mb-2" for="status"><fmt:message key="status"/></label>
            <select style="width: 140px;" class="form-select ms-3 me-4" id="status" name="status">
                <option value="Pending" ><fmt:message key="pending"/></option>
                <option value="Received" ><fmt:message key="recieved"/></option>
            </select>
        </div> 
        <div class="me-4">
            <label class="d-flex justify-content-center mb-2" for="lockerId"><fmt:message key="locker"/></label>
            <select style="width: 140px" class="form-select me-4" id="lockerId" name="lockerId" path="lockerId">
                <c:forEach items="${lockersUsing}" var="locker">
                    <option value="${locker.id}">${locker.id}</option>
                </c:forEach>
            </select>
        </div> 
        <button class="btn btn-primary" type="submit"><fmt:message key="search"/></button>
    </form>
</div>
<table class="table table-hover mt-4">
    <tr>
        <th><fmt:message key="id"/></th> 
        <th><fmt:message key="image"/></th>
        <th><fmt:message key="status"/></th>
        <th><fmt:message key="lockerId"/></th>
        <th><fmt:message key="Createdat"/></th>
        <th><fmt:message key="Updatedat"/></th>
        <th><fmt:message key="Action"/></th>
    </tr>
    <c:forEach items="${userOrders}" var="o">
        <tr>
            <td>${o.id}</td>
            <td>
                <img class="rounded img-fluid" src="${o.image}" width="200" alt="${o.id}">
            </td>
            <td>
                <c:choose>
                    <c:when test="${o.status == 'Received'}">
                        <p class="text-success">${o.status}</p>
                    </c:when>
                    <c:otherwise>
                        <p class="text-warning">${o.status}</p>
                    </c:otherwise>
                </c:choose>
            </td>
            <td>${o.lockerId.id}</td>
            <td><fmt:formatDate value="${o.createdAt}" pattern="dd/MM/yyyy HH:mm:ss" /></td>
            <td>
                <c:choose>
                    <c:when test="${o.updatedAt != null}">
                        <p><fmt:formatDate value="${o.updatedAt}" pattern="dd/MM/yyyy HH:mm:ss" /></p>
                    </c:when>
                    <c:otherwise>
                        <p>-----</p>
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:url value="/api/orders/${o.id}" var="url" />
                <button onClick="deleteOrder('${url}')" class="btn btn-danger"><fmt:message key="delete"/></button>
                <button onClick="confirmOrder('${url}')" class="btn btn-info"><fmt:message key="update"/></button>
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
                                    onclick="window.location.href = '/QuanLyChungCu?page=1'">1</button>
                            <button type="button" class="btn btn-outline-secondary">...</button>
                        </c:when>
                        <c:otherwise>
                            <c:forEach begin="1" end="3" varStatus="loop">
                                <button type="button" class="btn btn-outline-secondary"
                                        onclick="window.location.href = '/QuanLyChungCu?page=${loop.index}'">${loop.index}</button>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                </c:when>
                <c:otherwise>
                    <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                        <button type="button" class="btn btn-outline-secondary"
                                onclick="window.location.href = '/QuanLyChungCu?page=${loop.index}'">${loop.index}</button>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>

<script src="<c:url value="/js/script.js" />"></script>
