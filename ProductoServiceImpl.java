package cl.talentoDigital.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cl.talentoDigital.model.Producto;
import cl.talentoDigital.repository.IProductoRepository;
import cl.talentoDigital.vo.ProductoVO;

@Service
public class ProductoServiceImpl implements IProductoService {
	
	@Autowired
	IProductoRepository dao;
	
	ProductoVO respuesta;
	
	@Override
	@Transactional(readOnly = true)
	public ProductoVO getAllProductos() {
		respuesta = new ProductoVO(new ArrayList<Producto>(), "Ha ocurrido un error", "101");
		try {
			respuesta.setProductos((List<Producto>)dao.findAll());
			respuesta.setMensaje("Se han encontrado "+respuesta.getProductos().size()+" productos.");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respuesta;
	}
	
	@Override
	@Transactional(readOnly = true)
	public ProductoVO findByNombre(String nombre) {
		respuesta = new ProductoVO(new ArrayList<Producto>(), "Ha ocurrido un error", "102");
		try {
			List<Producto> productos = dao.findByNombre(nombre);
			if (productos.size() > 0) {
				respuesta.setProductos(productos);
				respuesta.setMensaje("Producto/s encontrado/s correctamente.");
				respuesta.setCodigo("0");
			} else {
				respuesta.setMensaje("Producto/s no encontrado/s.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respuesta;
	}

	@Override
	@Transactional
	public ProductoVO add(Producto producto) {
		respuesta = new ProductoVO(new ArrayList<Producto>(), "Ha ocurrido un error", "103");
		try {
			dao.save(producto);
			respuesta.setMensaje("Se ha guardado correctamente el producto "+producto.getNombre()+".");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respuesta;
	}

	@Override
	@Transactional
	public ProductoVO update(Producto producto) {
		respuesta = new ProductoVO(new ArrayList<Producto>(), "Ha ocurrido un error", "104");
		try {
			dao.save(producto);
			respuesta.setMensaje("Se ha actualizado correctamente el producto "+ producto.getNombre()+".");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respuesta;
	}

	@Override
	@Transactional
	public ProductoVO delete(Producto producto) {
		respuesta = new ProductoVO(new ArrayList<Producto>(), "Ha ocurrido un error", "105");
		try {
			dao.delete(producto);
			respuesta.setMensaje("Se ha eliminado correctamente el producto.");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respuesta;
	}
	
	@Override
	@Transactional(readOnly = true)
	public ProductoVO findById(Integer codigo) {
		respuesta = new ProductoVO(new ArrayList<Producto>(), "Ha ocurrido un error", "106");
		try {
			Producto producto = dao.findById(codigo).get();
			respuesta.getProductos().add(producto);
			respuesta.setMensaje("Producto encontrado correctamente.");
			respuesta.setCodigo("0");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respuesta;
	}
}
