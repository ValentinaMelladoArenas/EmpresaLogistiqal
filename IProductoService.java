package cl.talentoDigital.service;

import cl.talentoDigital.model.Producto;
import cl.talentoDigital.vo.ProductoVO;

public interface IProductoService {

	public ProductoVO getAllProductos();
	public ProductoVO findByNombre(String nommbre);
	public ProductoVO add(Producto producto);
	public ProductoVO update(Producto producto);
	public ProductoVO delete(Producto producto);
	public ProductoVO findById(Integer id);
}
