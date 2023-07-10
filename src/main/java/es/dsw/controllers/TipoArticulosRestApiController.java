package es.dsw.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import es.dsw.daos.TipoArticuloDao;
import es.dsw.models.Respuesta;
import es.dsw.models.TipoArticulo;

@Controller
@RequestMapping("/TipoArticulosRestApi/")
@RestController
public class TipoArticulosRestApiController {

	@RequestMapping(value = "/getAll", method = RequestMethod.GET, produces="application/json") 
	public Respuesta getAllTipoArticulos() {
			
		    Respuesta objRespuesta = new Respuesta();
			TipoArticuloDao objTipoArticuloDao = new TipoArticuloDao();
			List<TipoArticulo> objListadoTiposArticulos = objTipoArticuloDao.getAll();
			objRespuesta.setListaTipoArticulos(objListadoTiposArticulos);
			return objRespuesta;  
	} 
	
	@RequestMapping(value = "/getOne", method = RequestMethod.GET, produces="application/json") 
	public Respuesta getOneTipoArticulos(@RequestParam(name="id", required=false, defaultValue = "-1") int IdTipoArticulo) {
			
			Respuesta objRespuesta = new Respuesta();
			if (IdTipoArticulo < 0) {
				objRespuesta.setError(true);
				objRespuesta.setMsg("No ha indicado un id de tipo artículo válido por método GET.");
				objRespuesta.setListaTipoArticulos(null);
			} else {
				TipoArticuloDao objTipoArticuloDao = new TipoArticuloDao();
				TipoArticulo objTipoArticulo = objTipoArticuloDao.getOnce(IdTipoArticulo);
				
				List<TipoArticulo> objListadoTiposArticulos = new ArrayList<TipoArticulo>();
				objListadoTiposArticulos.add(objTipoArticulo);
				objRespuesta.setListaTipoArticulos(objListadoTiposArticulos);
			}
			
			return objRespuesta;  
	} 
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET, produces="application/json") 
	public Respuesta insertTipoArticulos(@RequestParam(name="descripcion", required=false, defaultValue = "") String descripcion) {
			
			Respuesta objRespuesta;
			if (descripcion.trim().equals("")) {
				objRespuesta = new Respuesta();
				objRespuesta.setError(true);
				objRespuesta.setMsg("No ha indicado la descripción del artículo.");
				objRespuesta.setListaTipoArticulos(null);
			} else {
				TipoArticuloDao objTipoArticuloDao = new TipoArticuloDao();
				TipoArticulo objTipoArticulo = new TipoArticulo(descripcion);
				objRespuesta = objTipoArticuloDao.add(objTipoArticulo);
			}
			
			return objRespuesta;  
	} 
	
	@RequestMapping(value = "/update", method = RequestMethod.GET, produces="application/json") 
	public Respuesta updateTipoArticulos(@RequestParam(name="id", required=false, defaultValue = "-1") int IdTipoArticulo, @RequestParam(name="descripcion", required=false, defaultValue = "") String descripcion) {
			
			Respuesta objRespuesta;
			if (IdTipoArticulo < 0) {
				objRespuesta = new Respuesta();
				objRespuesta.setError(true);
				objRespuesta.setMsg("No ha indicado un id de tipo artículo válido por método GET.");
				objRespuesta.setListaTipoArticulos(null);
			} else {
				TipoArticuloDao objTipoArticuloDao = new TipoArticuloDao();
				TipoArticulo objTipoArticulo = new TipoArticulo(descripcion);
				objTipoArticulo.setIdTipoArticulo(IdTipoArticulo);
				objRespuesta = objTipoArticuloDao.update(objTipoArticulo);
			}
			
			return objRespuesta;  
	} 
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET, produces="application/json") 
	public Respuesta deleteTipoArticulos(@RequestParam(name="id", required=false, defaultValue = "-1") int IdTipoArticulo) {
			
			Respuesta objRespuesta;
			if (IdTipoArticulo < 0) {
				objRespuesta = new Respuesta();
				objRespuesta.setError(true);
				objRespuesta.setMsg("No ha indicado un id de tipo artículo válido por método GET.");
				objRespuesta.setListaTipoArticulos(null);
			} else {
				TipoArticuloDao objTipoArticuloDao = new TipoArticuloDao();
				TipoArticulo objTipoArticulo = new TipoArticulo();
				objTipoArticulo.setIdTipoArticulo(IdTipoArticulo);
				objRespuesta = objTipoArticuloDao.delete(objTipoArticulo);
			}
			
			return objRespuesta;  
	} 
	
	 
}
