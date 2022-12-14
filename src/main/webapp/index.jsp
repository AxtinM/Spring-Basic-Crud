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
     <div class="container bg-dark mt-5">
         <h1 class="text-white">List des Produits &#8987</h1>
              
                <table class="container table table-striped bg-dark text-white m-5" style="width:1000px">
                      <tr>
                           <th>id</th><th>Nom</th><th>prix</th> <th>categorie</th><th>Action</th>
                       </tr>
                    <c:forEach items="${liste}" var="p" >
                       
                        <tr>
                             <td>${p.id}</td>
                             <td>${p.name}</td>
                             <td>${p.price}</td>
                             <td>${p.category.name}</td>
                             <td>
                                 <a href="delete-product?id=${p.id}"class="btn btn-danger">&#10006</a>
                                 <a href="edit-products?id=${p.id}"class="btn btn-success">&#9997</a>
                             </td>
                             
                         </tr>
                      </c:forEach>
                 
                  </table>

				<hr class="border border-danger border-2 opacity-50 mb-5">
				<a href="products-add"class="btn btn-info">Ajouter un Produit &#9989</a>
    </div>
</body>
</html>