<%--@elvariable id="publishers" type="java.util.List<com.jsun.site.entities.Publisher>"--%>
<%--@elvariable id="authors" type="java.util.List<com.jsun.site.entities.Author>"--%>
<%--@elvariable id="books" type="java.util.List<com.jsun.site.entities.Book>"--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Entities</title>
  </head>
  <body>

    <b>Publishers</b>
    <table>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Address</th>
        <th>Date Founded</th>
      </tr>
      <c:forEach items="${publishers}" var="p">
        <tr>
          <td>${p.id}</td>
          <td><c:out value="${p.name}" /></td>
          <td><c:out value="${p.address}" /></td>
          <td>${p.dateFounded.toInstant().toString() }</td>
        </tr>
      </c:forEach>
    </table><br />

<b>Authors</b>
    <table>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email Address</th>
        <th>Gender</th>
      </tr>
      <c:forEach items="${authors}" var="a">
        <tr>
          <td>${a.id}</td>
          <td><c:out value="${a.name}" /></td>
          <td><c:out value="${a.emailAddress}" /></td>
          <td>${a.gender }</td>
        </tr>
      </c:forEach>
    </table><br />

    <b>Books</b>
    <table>
      <tr>
        <th>ID</th>
        <th>ISBN</th>
        <th>Title</th>
        <th>Author</th>
        <th>Publisher</th>
        <th>Price</th>
      </tr>
      <c:forEach items="${books}" var="b">
        <tr>
          <td>${b.id}</td>
          <td><c:out value="${b.isbn}" /></td>
          <td><c:out value="${b.title}" /></td>
          <td><c:out value="${b.author}" /></td>
          <td><c:out value="${b.publisher}" /></td>
          <td><c:out value="${b.price}" /></td>
        </tr>
      </c:forEach>
    </table><br />
    
    <form method="post" action="<c:url value="/entities" />">
      <input type="submit" value="Add More Entities" />
    </form>
  </body>
</html>
    
     