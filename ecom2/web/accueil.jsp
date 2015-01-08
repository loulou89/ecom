<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../inc/style.css"></link>
</head>
<body><h1>Bienvenue sur popcorn</h1>

	<p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p><br/>
	
	
  
  
    <c:if test="${empty sessionScope.sessionUtilisateur}">
	<a href=connexion title="pageConnexion">Se Connecter</a>
	<br/>
	<a href=inscription title="pageInscription">S'inscrire</a>
	<br/>
	</c:if><br/>
	<a href=chercherfilm title="pageRecherche">Rechercher</a>
	<br/>
	<c:if test="${!empty sessionScope.sessionUtilisateur}">
      <%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
      <p class="succes">Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUtilisateur.email}</p>
      <a href="deconnexion" title="deconnexion" target="">Déconnecter</a> 
      
    </c:if><br/>
	
</body>
</html>