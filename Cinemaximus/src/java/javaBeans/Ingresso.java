
package javaBeans;
public class Ingresso {
    String filme;
    String usuario;
    double valor;
    String horario;
    String data; 


public void gravar() {
 if ( buscar() )
 {alterar();}
 else
 {incluir();}
}
public void    deletar() {}
public boolean buscar() {return true;}
public void incluir() {}
public void alterar() {}
}

