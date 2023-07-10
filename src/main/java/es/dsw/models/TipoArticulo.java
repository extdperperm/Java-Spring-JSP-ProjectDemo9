package es.dsw.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tipoarticulo")
public class TipoArticulo {
	
	@Id
	@Column(name="idtipoarticulo_tar")
	private int IdTipoArticulo;
	
	@Column(name="descripcion_tar")
	private String Descripcion;

	public TipoArticulo() {
		
	}
	
	public TipoArticulo(String descripcion) {
		Descripcion = descripcion;
	}
	
	public int getIdTipoArticulo() {
		return IdTipoArticulo;
	}

	public void setIdTipoArticulo(int idTipoArticulo) {
		IdTipoArticulo = idTipoArticulo;
	}

	public String getDescripcion() {
		return Descripcion;
	}

	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	
	

}
