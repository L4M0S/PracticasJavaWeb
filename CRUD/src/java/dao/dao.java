package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import modelo.producto;

    public class dao {
    private Connection conector;
    
    public dao(){
        conexion con=new conexion();
        try{
            conector=con.getConexion();
        }catch (SQLException e){
            e.printStackTrace();
        } 
    }
    
    public void addArticulo(producto articulo){
        String query = "insert into articulos values(NULL ,'" + articulo.getNombre()+ "','" + articulo.getPrecio() + "')";
        try {
            Statement stmt = conector.createStatement();
            stmt.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void removeArticulo(String codigo) {
        String query = "delete from articulos where codigo = " + Integer.parseInt(codigo) + " ";
        try {
            Statement stmt = conector.createStatement();
            stmt.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void updateArticulo(producto articulo) {
        String query = "update articulos set nombre='" + articulo.getNombre() + "', precio='" + articulo.getPrecio() + "' where codigo = " + Integer.parseInt(articulo.getCodigo()) + " ";
        System.out.println(query);
        try {
            Statement stmt = conector.createStatement();
            stmt.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public ArrayList<producto> getArticulos() throws SQLException {
        String query = "select * from articulos";
        ArrayList<producto> articulos = new ArrayList<producto>();
        Statement stmt = conector.createStatement();
        ResultSet res = stmt.executeQuery(query);
        while (res.next()) {
            producto articulo = new producto();
            articulo.setCodigo(res.getString("codigo"));
            articulo.setNombre(res.getString("nombre"));
            articulo.setPrecio(res.getString("precio"));
            articulos.add(articulo);
        }
        return articulos;
    }
    
    public producto getArticulo(String codigo) throws SQLException {
        producto articulo = new producto();
        String query = "select * from articulos where codigo = " + Integer.parseInt(codigo) + " ";
        Statement stmt = conector.createStatement();
        ResultSet res = stmt.executeQuery(query);
        if (res.next()) {
            articulo.setCodigo(res.getString("codigo"));
            articulo.setNombre(res.getString("nombre"));
            articulo.setPrecio(res.getString("precio"));
        }
        return articulo;
    }
}
