<%@page import="javaBeans.Usuario"%>
<% Usuario user = new Usuario(); // Instancia o objeto Usuario 
    if (!(user.statusSQL == null)) {
        out.println(user.statusSQL);
    }
    // preenche os atributos do objeto usuario
    user.nome = request.getParameter("nome");
    user.email = request.getParameter("email");
    user.celular = request.getParameter("celular");
    user.senha = request.getParameter("senha");
    
    user.incluir(); // chama o método para fazer a inclusão no banco de dados
    if (!(user.statusSQL == null))
        out.println(user.statusSQL);
    else {
        String sHTML = "<center>Usuário criado com Sucesso!<br>"
                + "<a href = '../index.jsp'> Voltar </a></center>";
        out.println(sHTML);
    }
%>
