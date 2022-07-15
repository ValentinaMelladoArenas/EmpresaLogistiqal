package cl.talentoDigital.vo;

import java.util.List;

import cl.talentoDigital.model.Producto;

public class ProductoVO {

	List<Producto> productos;
	String mensaje;
	String codigo;
	
	public ProductoVO() {
	}

	public ProductoVO(List<Producto> productos, String mensaje, String codigo) {
		super();
		this.productos = productos;
		this.mensaje = mensaje;
		this.codigo = codigo;
	}

	public List<Producto> getProductos() {
		return productos;
	}

	public void setProductos(List<Producto> productos) {
		this.productos = productos;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	@Override
	public String toString() {
		return "ProductoVO [productos=" + productos + ", mensaje=" + mensaje + ", codigo=" + codigo + "]";
	}
}
