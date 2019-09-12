/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculos;

/**
 *
 * @author lamos
 */
public class calculo {
    public static Double total(String salario, String dias)
            {
                Double total=Double.parseDouble(salario)*Double.parseDouble(dias);
                    return   total;
            }
}
