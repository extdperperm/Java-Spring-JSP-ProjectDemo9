<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 9</title>

<link rel="stylesheet" href="./styles/index.css">

</head>
<body>
    <div class="cabecera">
        <div class="cab1"></div>
        <div class="cap2"></div>
    </div>
    <div class="cuerpo">
        <div class="panel1">
            <div class="nota"><div class="notacab1"><p>Proyecto</p></div>
                              <div class="notabody"><p style="text-align: center;"><span>#Spring Proyect Demo 9</span></p>
                            </div>
            </div>
            <div class="nota"><div class="notacab1"><p>Objetivos</p></div>
                              <div class="notabody"><p class="objetivos">- <b>I</b>mplementaci�n de un WebServices tipo REST b�sico (Api Rest).</p>
                              						<p class="objetivos">- <b>F</b>amiliarizarse con la serializaci�n objeto vs json.</p>   
                              						<p class="objetivos">- <b>D</b>epuraci�n de una Api Rest con herramientas como Postman.</p>
                              						<p class="objetivos">- <b>C</b>onfiguraci�n b�sica de un ORM (Hibernate).</p>
                              						<p class="objetivos">- <b>O</b>perativa b�sica con un ORM (Hibernate).</p>      
                              </div>        
                            
            </div>
            <!-- Se muestran las propiedades del proyecto, pero esta vez, algunas han sido obtenidas desde ficheros de parametrizaci�n. -->
            <div class="nota"><div class="notacab2"><p>Entorno de Desarrollo</p></div>
                              <div class="notabody"><p><span>Ide:</span> Eclipse, versi&oacute;n: 2022-06</p>
                                                    <p><span>Servidor:</span> Apache Tomcat, versi&oacute;n: 9</p>
                                                    <p><span>Jdk:</span> 17.1</p>
                            </div>
            </div>
            <div class="nota"><div class="notacab2"><p>Estandar de Desarrollo</p></div>
                              <div class="notabody"><p><span>Gestor de proyecto:</span> Maven, versi&oacute;n: 3.8.0</p>
                                                    <p><span>Id Artefacto maven:</span> maven-archetype-webapp, versi&oacute;n: 1.4</p>
                                                    <p><span>Faceta:</span> Dynamic Web Module, versi&oacute;n: 4.0</p>
                            </div>
            </div> 
            <div class="nota"><div class="notacab2"><p>Dependencias</p></div>
                              <div class="notabody"><p><span>Spring Framework:</span> Spring, versi�n 5.3.22. M�dulos: Spring Web MVC</p>
                                                    <p><span>Javax servlet:</span> versi�n: 4.0.1</p>
                                                    <p><span>Mysql connector java (jdbc):</span> versi�n: 8.0.28</p>
                                                    <p><span>hibernate-core:</span> versi�n: 5.6.14</p>
                                                    <p><span>jackson-databind:</span> versi�n: 2.12.4</p>
                            </div>
            </div>    
            <div class="nota"><div class="notacab2"><p>Documentaci�n y Sitios de Inter�s</p></div>
                              <div class="notabody"><p><a href="https://mvnrepository.com/" target="_blank">Ir a</a> Maven Repository</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/" target="_blank">Leer</a> Documentaci�n de Spring</p>
                                                    <p><a href="https://proitcsolution.com.ve/inyeccion-de-dependencias-spring/" target="_blank">Leer</a> Inyecci�n de dependencias con Spring</p>
                                                    <p><a href="http://www.cursohibernate.es/doku.php?id=unidades:02_hibernate:03_configurando/" target="_blank">Leer</a> sobre como configurar el fichero hibernate.cfg.xml de Hibernate (ORM)</p>
                                                    <p><a href="https://docs.jboss.org/hibernate/orm/3.5/reference/en/html/queryhql.html" target="_blank">Leer</a> sobre como construir sentencias HQL de acceso a base de datos con Hibernate (ORM)</p>
                                                    <p><a href="https://www.tutorialspoint.com/hibernate/hibernate_query_language.htm" target="_blank">Leer</a> sobre como construir sentencias HQL de acceso a base de datos con Hibernate (ORM) II</p>
                                                    <p><a href="https://www.adictosaltrabajo.com/2020/04/02/hibernate-onetoone-onetomany-manytoone-y-manytomany/" target="_blank">Leer</a> sobre como configurar atributos de clases que hacen referencia a la relaci�n con otros objetos para explotar con Hibernate (ORM)</p>
                            </div>
            </div>         
        </div>
        <div class="panel2">
            <div class="item"><p><span>Introducci�n:</span> Este proyecto proporciona dos ejemplos en uno. Por un lado, la implementaci�n de dos ApiRest sencillas sin seguridad y por otro lado, la configuraci�n de la capa de acceso a datos con un ORM como es el caso de Hibernate.</p>
            <p>Para el caso de las ApiRest, se le recomienda descargar y hacer uso de herramientas para la depuraci�n de este tipo de WebServices. Para ello, dirijase a <a href="https://www.getpostman.com/" target="_blacnk">www.getpostman.com</a>, y descargue el software <b>The Postman app</b></p>	
            <p>Es importante que debe disponer de MySql o MariaDb con la base de datos cargada y que se suministra con este ejemplo.</p>		  
            </div>
            <div class="item"><p><span>Api Rest - Tipo de Art�culos</span> bajo la ruta <b>/TipoArticulosRestApi</b> se ofrecen las siguientes operaciones: </p>		
            				  <p><b>getAll</b>: Devuelve todos los tipos de art�culos de la base de datos en un JSON. Requiere par�metros: No. M�todo de env�o: GET</p>	 
            				  <p><b>getOne</b>: Devuelve un tipo de art�culo dado un valor de IdArticulo si existe. Requiere par�metros: S� {id}. M�todo de env�o: GET</p>
            				  <p><b>insert</b>: Inserta un registro de tipo art�culo. Requiere par�metros: S� {descripcion}. M�todo de env�o: GET</p>	
            				  <p><b>update</b>: Modifica un registro de tipo art�culo dado un valor de IdArticulo si existe. Requiere par�metros: S� {id, descripcion}. M�todo de env�o: GET</p>
            				  <p><b>delete</b>: Elimina un registro de tipo art�culo dado un valor de IdArticulo si existe. Requiere par�metros: S� {id}. M�todo de env�o: GET</p>   
            				  <p><b>Ejemplo de invocaci�n:</b><br>
            				  	<a href="http://localhost:8080/SpringProyectDemo9/TipoArticulosRestApi/getAll" target="_blanck">http://localhost:8080/SpringProyectDemo9/TipoArticulosRestApi/getAll</a>
            				  </p>	   
            </div>
            <div class="item"><p><span>Api Rest - Art�culos</span> bajo la ruta <b>/ArticulosRestApi</b> se ofrecen las siguientes operaciones: </p>		
            				  <p><b>getAll</b>: Devuelve todos los art�culos de la base de datos en un JSON. Requiere par�metros: No. M�todo de env�o: GET</p>	 
            				  <p><b>Ejemplo de invocaci�n:</b><br>
            				  	<a href="http://localhost:8080/SpringProyectDemo9/ArticulosRestApi/getAll" target="_blanck">http://localhost:8080/SpringProyectDemo9/ArticulosRestApi/getAll</a>
            				  </p>	   
            </div>
            <div class="item"><p><span>Configuraci�n ORM (Hibernate)</span> Para realizar el an�lisis o ingenier�a inversa de los pasos a seguir para configurar un ORM como es en este caso Hibernate, siga el siguiente orden:</p>
            	<p><b>Paso 1: Dependencias.</b> A�ada al poom.xml las dos dependencias correspondientes a mysql-connector-java y hibernate-core. Realice un Maven Update.</p>
            	<p><b>Paso 2: Configuraci�n.</b> Cre� el fichero de configuraci�n de Hibernate denominado hibernate.cfg.xml. Este fichero debe ir en la ra�z del directorio /src/ del proyecto. Modifique los datos de conexi�n del fichero u otra configuraci�n necesaria seg�n documentaci�n del fabricante.</p>
            	<p><b>Paso 3: Mapeo de entidades.</b> Comience a mapear las clases con las tablas en base de datos (entidades). Para ello haga uso de las java annotations. Analizar por este orden las clases TipoArticulo.java y Articulo.java.</p>
            	<p><b>Paso 4: Creaci�n de DAOs.</b> Cre� las clases DAO que faciliten la generaci�n de los objetos relacionados con las entidades de base de datos. Analizar por este orden las clases TipoArticuloDao.java y ArticuloDao.java.</p>
            	<p><b>Paso 5: Verificaci�n.</b> Compruebe como a nivel de negocio, desde las controladoras ArticulosRestApiController.java y TipoArticulosRestApiController se explotan los modelos Articulo y TipoArticulo que est�n mapeadas con entidades de base de datos.</p>
            </div>
            
        </div>
    </div>
    <div class="pie"><p><span>�</span> 2022 - Daniel P�rez P�rez</p></div>

</body>
</html>