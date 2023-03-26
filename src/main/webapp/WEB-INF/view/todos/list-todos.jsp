<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>

<header>
    <section>
        <h3 class="text-center">List todo</h3>
    </section>
</header>

<main>
    <section class="container">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Username</th>
                <th scope="col">Description</th>
                <th scope="col">Date</th>
                <th scope="col">Done</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="temp" varStatus="loop" items="${todos}">
                <tr>
                    <th scope="row">${loop.index + 1}</th>
                    <td>${temp.username}</td>
                    <td>${temp.description}</td>
                    <td>${temp.date}</td>
                    <td>${temp.done == true ? "Hoan thanh" : "Chua hoan thanh"}</td>
                    <td>
                        <a href="/update-todo?id=${loop.index}" class="btn btn-success">Update todo</a>
                        <a href="/remove-todo?id=${loop.index}" class="btn btn-danger">Remove todo</a>
                        <a href="/detail-todo?id=${loop.index}" class="btn btn-primary">Detail todo</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </section>

    <section class="container">
        <a href="/add-todo" class="btn btn-success">Add todo</a>
    </section>
</main>

<footer>
    <section>
        <h3 class="text-center">toindph26899</h3>
    </section>
</footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.min.js"
        integrity="sha384-heAjqF+bCxXpCWLa6Zhcp4fu20XoNIA98ecBC1YkdXhszjoejr5y9Q77hIrv8R9i"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
        crossorigin="anonymous"></script>
</body>
</html>