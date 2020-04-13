<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Books List Application</title>
</head>
<body>
    <center>
        <h1>Lista Książek</h1>
        <h2>
            <a href="/new">Dodaj Nową Książkę</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/list">Lista Wszystkich Książek</a>
             
        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Lista Książek</h2></caption>
            <tr>
                <th>ID</th>
                <th>Tytuł</th>
                <th>Autor</th>
                <th>Nr ISBN</th>
                <th>Wykonaj</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.isbn}" /></td>
                    <td><c:out value="${book.year}" /></td>
                    <td>
                        <a href="/edit?id=<c:out value='${book.id}' />">Edytuj</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/delete?id=<c:out value='${book.id}' />">Usuń</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>