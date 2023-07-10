package es.dsw.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="articulo")
public class Articulo {
	
	@Id
	@Column(name="idarticulo_art")
	private int IdArticulo;

	@Column(name="codbarras_art")
	private long CodBarras;

	@Column(name="nombre_art")
	private String Nombre;

	@Column(name="descripcion_art")
	private String Descripcion;
	
	//Para más información de las Java Annotations relativas a las relaciones de los objetos,
	//tiene más información aquí: https://www.adictosaltrabajo.com/2020/04/02/hibernate-onetoone-onetomany-manytoone-y-manytomany/
	@ManyToOne()
	@JoinColumn(name = "idtipoarticulo_art")
	private TipoArticulo objTipoArticulo;
	
	public Articulo() {
		
	}

	public Articulo(long codBarras, String nombre, String descripcion) {
		this.CodBarras = codBarras;
		this.Nombre = nombre;
		this.Descripcion = descripcion;
	}

	public TipoArticulo getObjTipoArticulo() {
		return objTipoArticulo;
	}

	public void setObjTipoArticulo(TipoArticulo objTipoArticulo) {
		this.objTipoArticulo = objTipoArticulo;
	}

	public int getIdArticulo() {
		return IdArticulo;
	}

	public void setIdArticulo(int idArticulo) {
		IdArticulo = idArticulo;
	}

	public long getCodBarras() {
		return CodBarras;
	}

	public void setCodBarras(long codBarras) {
		CodBarras = codBarras;
	}

	public String getNombre() {
		return Nombre;
	}

	public void setNombre(String nombre) {
		Nombre = nombre;
	}

	public String getDescripcion() {
		return Descripcion;
	}

	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	
	
	
	
	
	

}
