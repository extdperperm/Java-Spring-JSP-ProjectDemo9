package es.dsw.models;

import java.util.List;

public class Respuesta {

	private boolean Error;
	private String Msg;
	private List<TipoArticulo> ListaTipoArticulos;
	private List<Articulo> ListaArticulos;
	
	public Respuesta() {
		this.Error = false;
		this.Msg = "";
	}

	public List<Articulo> getListaArticulos() {
		return ListaArticulos;
	}

	public void setListaArticulos(List<Articulo> listaArticulos) {
		ListaArticulos = listaArticulos;
	}

	public List<TipoArticulo> getListaTipoArticulos() {
		return ListaTipoArticulos;
	}

	public void setListaTipoArticulos(List<TipoArticulo> listaTipoArticulos) {
		ListaTipoArticulos = listaTipoArticulos;
	}

	public boolean getError() {
		return Error;
	}

	public void setError(boolean isError) {
		Error = isError;
	}

	public String getMsg() {
		return Msg;
	}

	public void setMsg(String msgError) {
		Msg = msgError;
	}
}
