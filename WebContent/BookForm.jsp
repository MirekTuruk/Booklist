<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Books Store Application</title>
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
        <c:if test="${book != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${book == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    <c:if test="${book != null}">
                        Edytuj Dane
                    </c:if>
                    <c:if test="${book == null}">
                        Dodaj Nową Książkę
                    </c:if>
                </h2>
            </caption>
                <c:if test="${book != null}">
                    <input type="hidden" name="id" value="<c:out value='${book.id}' />" />
                </c:if>           
            <tr>
                <th>Tytuł: </th>
                <td>
                    <input type="text" name="title" size="45"
                            value="<c:out value='${book.title}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Autor: </th>
                <td>
                    <input type="text" name="author" size="45"
                            value="<c:out value='${book.author}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Nr ISBN: </th>
                <td>
                    <input type="text" name="price" size="45"
                            value="<c:out value='${book.isbn}' />"
                    />
                </td>
            </tr>
                        <tr>
                <th>Rok Wydania: </th>
                <td>
                    <input type="text" name="price" size="45"
                            value="<c:out value='${book.year}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Zapisz" />
                </td>
            </tr>
        </table>
        </form>
    </div>   
</body>
</html>
