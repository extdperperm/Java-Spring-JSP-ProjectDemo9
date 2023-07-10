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
                              <div class="notabody"><p class="objetivos">- <b>I</b>mplementación de un WebServices tipo REST básico (Api Rest).</p>
                              						<p class="objetivos">- <b>F</b>amiliarizarse con la serialización objeto vs json.</p>   
                              						<p class="objetivos">- <b>D</b>epuración de una Api Rest con herramientas como Postman.</p>
                              						<p class="objetivos">- <b>C</b>onfiguración básica de un ORM (Hibernate).</p>
                              						<p class="objetivos">- <b>O</b>perativa básica con un ORM (Hibernate).</p>      
                              </div>        
                            
            </div>
            <!-- Se muestran las propiedades del proyecto, pero esta vez, algunas han sido obtenidas desde ficheros de parametrización. -->
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
                              <div class="notabody"><p><span>Spring Framework:</span> Spring, versión 5.3.22. Módulos: Spring Web MVC</p>
                                                    <p><span>Javax servlet:</span> versión: 4.0.1</p>
                                                    <p><span>Mysql connector java (jdbc):</span> versión: 8.0.28</p>
                                                    <p><span>hibernate-core:</span> versión: 5.6.14</p>
                                                    <p><span>jackson-databind:</span> versión: 2.12.4</p>
                            </div>
            </div>    
            <div class="nota"><div class="notacab2"><p>Documentación y Sitios de Interés</p></div>
                              <div class="notabody"><p><a href="https://mvnrepository.com/" target="_blank">Ir a</a> Maven Repository</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/" target="_blank">Leer</a> Documentación de Spring</p>
                                                    <p><a href="https://proitcsolution.com.ve/inyeccion-de-dependencias-spring/" target="_blank">Leer</a> Inyección de dependencias con Spring</p>
                                                    <p><a href="http://www.cursohibernate.es/doku.php?id=unidades:02_hibernate:03_configurando/" target="_blank">Leer</a> sobre como configurar el fichero hibernate.cfg.xml de Hibernate (ORM)</p>
                                                    <p><a href="https://docs.jboss.org/hibernate/orm/3.5/reference/en/html/queryhql.html" target="_blank">Leer</a> sobre como construir sentencias HQL de acceso a base de datos con Hibernate (ORM)</p>
                                                    <p><a href="https://www.tutorialspoint.com/hibernate/hibernate_query_language.htm" target="_blank">Leer</a> sobre como construir sentencias HQL de acceso a base de datos con Hibernate (ORM) II</p>
                                                    <p><a href="https://www.adictosaltrabajo.com/2020/04/02/hibernate-onetoone-onetomany-manytoone-y-manytomany/" target="_blank">Leer</a> sobre como configurar atributos de clases que hacen referencia a la relación con otros objetos para explotar con Hibernate (ORM)</p>
                            </div>
            </div>         
        </div>
        <div class="panel2">
            <div class="item"><p><span>Introducción:</span> Este proyecto proporciona dos ejemplos en uno. Por un lado, la implementación de dos ApiRest sencillas sin seguridad y por otro lado, la configuración de la capa de acceso a datos con un ORM como es el caso de Hibernate.</p>
            <p>Para el caso de las ApiRest, se le recomienda descargar y hacer uso de herramientas para la depuración de este tipo de WebServices. Para ello, dirijase a <a href="https://www.getpostman.com/" target="_blacnk">www.getpostman.com</a>, y descargue el software <b>The Postman app</b></p>	
            <p>Es importante que debe disponer de MySql o MariaDb con la base de datos cargada y que se suministra con este ejemplo.</p>		  
            </div>
            <div class="item"><p><span>Api Rest - Tipo de Artículos</span> bajo la ruta <b>/TipoArticulosRestApi</b> se ofrecen las siguientes operaciones: </p>		
            				  <p><b>getAll</b>: Devuelve todos los tipos de artículos de la base de datos en un JSON. Requiere parámetros: No. Método de envío: GET</p>	 
            				  <p><b>getOne</b>: Devuelve un tipo de artículo dado un valor de IdArticulo si existe. Requiere parámetros: Sí {id}. Método de envío: GET</p>
            				  <p><b>insert</b>: Inserta un registro de tipo artículo. Requiere parámetros: Sí {descripcion}. Método de envío: GET</p>	
            				  <p><b>update</b>: Modifica un registro de tipo artículo dado un valor de IdArticulo si existe. Requiere parámetros: Sí {id, descripcion}. Método de envío: GET</p>
            				  <p><b>delete</b>: Elimina un registro de tipo artículo dado un valor de IdArticulo si existe. Requiere parámetros: Sí {id}. Método de envío: GET</p>   
            				  <p><b>Ejemplo de invocación:</b><br>
            				  	<a href="http://localhost:8080/SpringProyectDemo9/TipoArticulosRestApi/getAll" target="_blanck">http://localhost:8080/SpringProyectDemo9/TipoArticulosRestApi/getAll</a>
            				  </p>	   
            </div>
            <div class="item"><p><span>Api Rest - Artículos</span> bajo la ruta <b>/ArticulosRestApi</b> se ofrecen las siguientes operaciones: </p>		
            				  <p><b>getAll</b>: Devuelve todos los artículos de la base de datos en un JSON. Requiere parámetros: No. Método de envío: GET</p>	 
            				  <p><b>Ejemplo de invocación:</b><br>
            				  	<a href="http://localhost:8080/SpringProyectDemo9/ArticulosRestApi/getAll" target="_blanck">http://localhost:8080/SpringProyectDemo9/ArticulosRestApi/getAll</a>
            				  </p>	   
            </div>
            <div class="item"><p><span>Configuración ORM (Hibernate)</span> Para realizar el análisis o ingeniería inversa de los pasos a seguir para configurar un ORM como es en este caso Hibernate, siga el siguiente orden:</p>
            	<p><b>Paso 1: Dependencias.</b> Añada al poom.xml las dos dependencias correspondientes a mysql-connector-java y hibernate-core. Realice un Maven Update.</p>
            	<p><b>Paso 2: Configuración.</b> Creé el fichero de configuración de Hibernate denominado hibernate.cfg.xml. Este fichero debe ir en la raíz del directorio /src/ del proyecto. Modifique los datos de conexión del fichero u otra configuración necesaria según documentación del fabricante.</p>
            	<p><b>Paso 3: Mapeo de entidades.</b> Comience a mapear las clases con las tablas en base de datos (entidades). Para ello haga uso de las java annotations. Analizar por este orden las clases TipoArticulo.java y Articulo.java.</p>
            	<p><b>Paso 4: Creación de DAOs.</b> Creé las clases DAO que faciliten la generación de los objetos relacionados con las entidades de base de datos. Analizar por este orden las clases TipoArticuloDao.java y ArticuloDao.java.</p>
            	<p><b>Paso 5: Verificación.</b> Compruebe como a nivel de negocio, desde las controladoras ArticulosRestApiController.java y TipoArticulosRestApiController se explotan los modelos Articulo y TipoArticulo que están mapeadas con entidades de base de datos.</p>
            </div>
            
        </div>
    </div>
    <div class="pie"><p><span>©</span> 2022 - Daniel Pérez Pérez</p></div>

</body>
</html>