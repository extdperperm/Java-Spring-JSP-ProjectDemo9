package es.dsw.daos;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import es.dsw.models.Articulo;
import es.dsw.models.TipoArticulo;


public class ArticuloDao {
	
	private static SessionFactory MyFactory = null;

	public ArticuloDao() {
		if (MyFactory == null) {
			MyFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Articulo.class).addAnnotatedClass(TipoArticulo.class).buildSessionFactory();
		}
	}
	
	//Lo interesante de este ejemplo es que compruebe como Hibernate ya se encara de relacionar a cada artículo con el objeto tipo de artículo.
	//Revise la clase Artículo y compruebe como se pueden indicar para que mapeé relaciones 1 a 1, 1 a M y M a N.
	@SuppressWarnings("unchecked")
	public List<Articulo> getAll(){
		List<Articulo> results = null;
		Session objSession = MyFactory.openSession();
		try {
			//A tener en cuenta con HQL: Toda consulta en HQL hace referencia no a los campos ni las tablas de base de datos, sino a los nombres de las clases y sus
			//atributos. Más información: https://www.tutorialspoint.com/hibernate/hibernate_query_language.htm
			String hql = "FROM Articulo";
			Query query = objSession.createQuery(hql);
			results = query.getResultList();
		}
		finally {
			objSession.close();
		}

		return results;
	}
	
}
