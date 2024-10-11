package javaBeans;
import java.sql.DriverManager; // Driver para abrir Conexão 
import java.sql.ResultSet;
import java.sql.SQLException;  // Tratamento de Erros SQL
import java.sql.Connection;    // Armazena a Conexão Aberta
import java.sql.PreparedStatement;

public class Conectar {
public Connection con;       // variávei que armazena a conexão com o SQL
public String sql;           // variável que armazena os comandos SQL  
public PreparedStatement ps; // objeto que prepara o sql
public ResultSet tab;        // Armazena um conjunto de Registros 
public String MeuBanco = "cinemaximus";      // Nome do banco a ser criado
public String servidor = "jdbc:mysql:    //localhost:3306"; // caminho do servidor SQL 
public String usuario = "root";  // Login nome do usuario do banco SQL
public String senha = "";        // Senha do Banco SQL
public String statusSQL;
/* Na variável statusSQl conterá null quando não tiver erros 
Mas quando haver erros conterá a mensagem de erro capturada
Pela excessão da clausula try. */
                                        
    
public Conectar() {
try {
 Class.forName("com.mysql.cj.jdbc.Driver"); // Carrega o driver JDBC
 con=DriverManager.getConnection(servidor, usuario, senha );
       
 this.criarBanco(); // Função que cria o banco de dados
        
 statusSQL = null;  // Armazena NULL se não haver erros nos comandos SQL
} catch (ClassNotFoundException ex) {
  statusSQL = "Driver JDBC não encontrado! " + ex.getMessage();
      } catch (SQLException ex) {
  statusSQL = "Servidor fora do ar ou comando SQL ! " + ex.getMessage();
     }}

    
public void criarBanco() {
try {
sql = "create database if not exists " + this.MeuBanco; // armazena sql
ps = con.prepareStatement ( sql ); // prepara o comando
ps.executeUpdate(); // Executa o comando SQL
               
sql = "use " + this.MeuBanco;
ps = con.prepareStatement ( sql );
ps.executeUpdate(); // Executa o comando SQL dentro do servidor 

    sql = "create table if not exists usuarios ( pkuser int AUTO_INCREMENT,"
            + "nome varchar(40) not null,"
            + "email varchar(40) not null,"
            + "celular varchar(20) not null,"
            + "senha varchar(10) not null,"
            + "cpf varchar (11) not null,"
            + "datanascimento varchar (10) not null,"
            + "genero varchar (20) not null,"
            + "PRIMARY KEY ( pkuser ) ) ";
    ps = con.prepareStatement(sql);
    ps.executeUpdate(); // Executa o comando SQL dentro do servidor
    
statusSQL = null; // Coloca null nas operações bem sucedidas

        } catch (SQLException err) {
statusSQL = "Erro ao executar SQL " + err.getMessage(); // houve erros
        }}}