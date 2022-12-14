<%@ page language="java" contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Gestion Produit</title>

    <link  href = "bootstrap.min.css"  rel = " stylesheet " >
</head>
<body class="bg-dark">
<div class="container bg-dark mt-5 text-white">
	<h1 class="text-white">Editer un Produit &#9981</h1>
    <div class="card bg-dark">

        <div class="card text-white bg-secondary">
        </div>
        <form action="edit-product?id=${produit.id}" method="post" class="bg-dark">

            <div class="form-group">

                <label class="form-label">nom :</label>
                <input type="text" name="name" class="form-control car" value="${produit.name}"><br>
                <label class="form-label">prix :</label>
                <input type="Number" name="price" class="form-control car" value="${produit.price}"><br>

                <label class="form-label">Categorie</label>
                <select name="category" value="${produit.category.id}">
                    <c:forEach items="${categorie}" var="x">
                        <option value="${x.id}">"${x.name}"</option>
                    </c:forEach>
                </select>
                <br>
                <input type="submit" name="action" value="editer" class="btn btn-success">

            </div>
        </form>
    </div>
</div>


</body>
</html>