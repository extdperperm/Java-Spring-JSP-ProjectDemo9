package es.dsw.daos;


import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import es.dsw.models.Respuesta;
import es.dsw.models.TipoArticulo;



public class TipoArticuloDao {

	//Se recomienda inicializar el SessionFactory una vez arrancada la aplicación en memoria compartida. Por lo que se podría
	//capturar el evento de arranque de la aplicación e inicializarla en ese momento. En este caso, se inicializa en cada DAO
	//una única vez.
	private static SessionFactory MyFactory = null;
	
	public TipoArticuloDao() {
		//Si ya fue inicializado no se vuelve a inicializar.
		if (MyFactory == null) {
			MyFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(TipoArticulo.class).buildSessionFactory();
		}
		
	}
	
	//Método que devuelve todos los tipos de artículos que existan en la tabla. Un mini ejemplo de consulta HQL
	@SuppressWarnings("unchecked")
	public List<TipoArticulo> getAll(){
		List<TipoArticulo> results = null;
		
		//Se debe abrir una sesión. En este caso si es recomendable cerrarla cada vez que se abre.
		Session objSession = MyFactory.openSession();
		
		try {
			//A tener en cuenta con HQL: Toda consulta en HQL hace referencia no a los campos ni las tablas de base de datos, sino a los nombres de las clases y sus
			//atributos. Más información: https://www.tutorialspoint.com/hibernate/hibernate_query_language.htm
			String hql = "FROM TipoArticulo";
			Query query = objSession.createQuery(hql);
			results = query.getResultList();
		}
		finally {
			//Siempre debe cerrarse la sesión despues de usar o terminar la transacción.
			objSession.close();
		}

		return results;
	}
	
	//Método que obtiene un solo tipo de artículo dado su id. Hay muchas alternativas como explotar el lenguaje HQL.
	public TipoArticulo getOnce(int IdTipoArticulo){
		
		TipoArticulo result = null;
		Session objSession = MyFactory.openSession();
		
		try {
			objSession.beginTransaction();
			//Tambien se puede usar el método objSession.get.
			result = objSession.find(TipoArticulo.class, IdTipoArticulo);
		}
		finally {
			objSession.close();
		}
		
		return result;
	}
	
	//Añadir un nuevo tipo de artículo.
	public Respuesta add(TipoArticulo objTipoArticulo) {
		
		Respuesta objRespuesta = new Respuesta();
		Session objSession = MyFactory.openSession();
		try {
			objSession.getTransaction().begin();
			objSession.save(objTipoArticulo);
			objSession.getTransaction().commit();
			objRespuesta.setMsg("Inserción realizada correctamente");
		} catch(Exception ex) {
			objSession.getTransaction().rollback();
			objRespuesta.setError(true);
			objRespuesta.setMsg("Ok, Error en TipoArticuloDao.add. +info: " + ex.getMessage());
		}
		finally {
			objSession.close();
		}		
		
		return objRespuesta;
	}
	
	//Actualizar los datos de un tipo de artículo ya existente
	public Respuesta update(TipoArticulo objTipoArticulo) {
		
		Respuesta objRespuesta = new Respuesta();
		Session objSession = MyFactory.openSession();
		try {
			objSession.getTransaction().begin();
			objSession.update(objTipoArticulo);
			objSession.getTransaction().commit();
			objRespuesta.setMsg("Ok, Actualización realizada correctamente");
		} catch(Exception ex) {
			objSession.getTransaction().rollback();
			objRespuesta.setError(true);
			objRespuesta.setMsg("Error en TipoArticuloDao.update. +info: " + ex.getMessage());
		}
		finally {
			objSession.close();
		}		
		
		return objRespuesta;
	}
	
	//Eliminar un tipo de artículo.
	public Respuesta delete(TipoArticulo objTipoArticulo) {
		
		Respuesta objRespuesta = new Respuesta();
		Session objSession = MyFactory.openSession();
		try {
			objSession.getTransaction().begin();
			objSession.delete(objTipoArticulo);
			objSession.getTransaction().commit();
			objRespuesta.setMsg("Ok, Eliminación realizada correctamente");
		} catch(Exception ex) {
			objSession.getTransaction().rollback();
			objRespuesta.setError(true);
			objRespuesta.setMsg("Error en TipoArticuloDao.delete. +info: " + ex.getMessage());
		}
		finally {
			objSession.close();
		}		
		
		return objRespuesta;
	}
	
	
}
