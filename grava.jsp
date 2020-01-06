<%@ page language="java" import="java.sql.*" %>

 <%

 // cria variaveis e pega os valores digitados pelo usuário
 // 
 String vnome    	= request.getParameter( "txtnome" )  ;
 String vemail		= request.getParameter( "txtemail" )  ;
 String vtelefone	= request.getParameter( "txttelefone" )  ;
 String vassunto	= request.getParameter( "txtassunto" )  ;
 String vmensagem	= request.getParameter( "txtmensagem" )  ;


 out.print( "Nome: "      + vnome    + "<br>") ;
 out.print( "E-mail: "    + vemail   + "<br>") ;
 out.print( "Telefone: "  + vtelefone + "<br>") ;
 out.print( "Assunto: "  + vassunto + "<br>") ;
 out.print( "Mensagem: "  + vmensagem + "<br>") ;


 // cria as variavies para acessar o banco de dados
 //
 String driver = "net.sourceforge.jtds.jdbc.Driver" ;
 String url    = "jdbc:jtds:sqlserver://10.4.0.89:1433/bd201862015";
 String usuario= "bd201862015" ;
 String senha  = "123456" ;

 // carrega o driver na memoria
 Class.forName( driver ) ;
 
 // cria a conexao com o banco de dados
 // informando endereço do banco, usuario, senha
 Connection conexao = DriverManager.getConnection(url,usuario,senha) ;

 // cria o statement para executar o comando sql
 Statement stm = conexao.createStatement() ; 

 String sql = "insert into contato (nome,email,telefone,assunto,mensagem) values('" + vnome + "','" + vemail + "','" + vtelefone + "','" + vassunto + "','" + vmensagem + ",')" ;

 stm.executeUpdate( sql ) ;

 out.print( "<br>" ) ;
 out.print( "Dados gravados <br>") ;
 out.print( "<a href=\"contato.html\">Voltar</a>" );

 %> 