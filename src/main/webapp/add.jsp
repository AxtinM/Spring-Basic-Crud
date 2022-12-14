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
     <div class="container card bg-dark text-white p-5 mt-5">
	<h1>Ajouter un produit &#9200</h1>
                  
                  <div class="card text-white bg-secondary mb-3">
                   </div>
               <form action="add-product" method="post">
               
                    <div class="form-group">
                    
                          <label class="form-label">nom :</label>
                          <input type="text" name="name" class="form-control car"><br>
                          <label class="form-label">prix :</label>
                          <input type="Number" name="price" class="form-control car"><br>
                          
                          <label class="form-label">Categorie</label>
                          <select name="category">
                               <c:forEach items="${categorie}" var="x">
                                   <option value="${x.id}">"${x.name}"</option>
                                </c:forEach>
                          </select>
                             <input type="submit" name="action" value="&#10004"class="btn btn-success ml-3">
                          
                      </div>
                </form>
         </div>
    </div>


</body>
</html>