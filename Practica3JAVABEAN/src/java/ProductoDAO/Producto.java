/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ProductoDAO;

import BEAN.ProductoBEAN;
import java.util.ArrayList;

/**
 *
 * @author Errata
 */
public class Producto {
    
    
    private ArrayList<ProductoBEAN> productos = new ArrayList<ProductoBEAN>();
    
    public Producto(String cM, String cA, String cF){
        productos.add(gen("111", "Motor", "50", cM));
        productos.add(gen("222", "Aceite", "30", cA));
        productos.add(gen("333", "Filtro de Aire", "40", cM));
    }
     
    private ProductoBEAN gen(String cod, String pro, String pre, String can){
        ProductoBEAN p = new ProductoBEAN();
        p.setCodigo(Integer.parseInt(cod));
        p.setProducto(pro);
        p.setPrecio(Float.parseFloat(pre));
        if(!can.isEmpty()){
            p.setCantidad(Integer.parseInt(can));
        }else{
            p.setCantidad(0);
        }
        return p;
    }
    
    public ArrayList<ProductoBEAN> getProductos(){
        return productos;
    }
    
}
