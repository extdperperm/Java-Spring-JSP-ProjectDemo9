package es.dsw.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import es.dsw.daos.ArticuloDao;
import es.dsw.models.Articulo;
import es.dsw.models.Respuesta;


@Controller
@RequestMapping("/ArticulosRestApi/")
@RestController
public class ArticulosRestApiController {

	@RequestMapping(value = "/getAll", method = RequestMethod.GET, produces="application/json") 
	public Respuesta getAllArticulos() {
			
		    Respuesta objRespuesta = new Respuesta();
			ArticuloDao objArticuloDao = new ArticuloDao();
			List<Articulo> objListadoArticulos = objArticuloDao.getAll();
			objRespuesta.setListaArticulos(objListadoArticulos);
			return objRespuesta;  
	} 
	
}
