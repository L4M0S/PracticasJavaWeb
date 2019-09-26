
package datos;

public class dao {
    private double CantidadMotor;
    private double CantidadAceite;
    private double CantidadFiltro;
    private double SubTotal;
    private double Total;
    
    public void setCantidadMotor(double _CantidadMotor)
    {
        CantidadMotor=_CantidadMotor;
    }
    
    public void setCantidadAceite(double _CantidadAceite)
    {
        CantidadAceite=_CantidadAceite;
    }
    
    public void setCantidadFiltro(double _CantidadFiltro)
    {
        CantidadFiltro=_CantidadFiltro;
    }
    
    public double getSubTotal()
    {
        SubTotal=(CantidadMotor*50)+(CantidadAceite*30)+(CantidadFiltro*40);
        return SubTotal;
    }
    
    public double getTotal()
    {
        Total=getSubTotal()+(getSubTotal()*0.16);
        return Total;
    }
}

