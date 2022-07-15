package cl.talentoDigital.model;

import javax.persistence.*;

@Entity
@SequenceGenerator(name="SQ_PRODUCTO", initialValue=1, allocationSize=1,sequenceName = "SQ_PRODUCTO")
public class Producto {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="SQ_PRODUCTO")
	private Integer codigo;
	private String nombre;
	private Integer precio;
	private Integer stock;
	
	public Producto() {
	}

	public Producto(Integer codigo, String nombre, Integer precio, Integer stock) {
		super();
		this.codigo = codigo;
		this.nombre = nombre;
		this.precio = precio;
		this.stock = stock;
	}

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Integer getPrecio() {
		return precio;
	}

	public void setPrecio(Integer precio) {
		this.precio = precio;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	@Override
	public String toString() {
		return "Producto [codigo=" + codigo + ", nombre=" + nombre + ", precio=" + precio + ", stock=" + stock + "]";
	}
}
