<%@page import="javaBeans.Ingresso"%>
<%
String filme = "";
if (request.getParameter("filme") != null) {

filme = request.getParameter("filme");

if ( filme.equalsIgnoreCase("interestelar") ) {
filme = "../img/interestelar.jpg";
}
}

String userName = String.valueOf(session.getAttribute("nome"));
String userEmail = String.valueOf(session.getAttribute("email"));

String sHtml = "";
if (userName != null) {
sHtml = "Bem vindo " + userName + "!";
}
%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cinemaximus - Filme</title>
    <link rel="stylesheet" href="style-filme.css" />
    <style type="text/css">
      
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: #13152D;
    color: #ECECEC;
    line-height: 1.5;
}

header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 16px;
    background: #13152D;
}

header .logo img {
    height: 150px;
}

header .usuario {
    font-size: 16px;
    color: #ECECEC;
}

.detalhes-filme {
    display: flex;
    align-items: flex-start;
    gap: 32px;
    padding: 32px;
}

.detalhes-filme .filme-poster {
    width: 350px;
    border-radius: 8px;
}

.info-filme h1 {
    font-size: 32px;
    
}

.info-filme p {
    margin: 16px;
    color: #ECECEC;
}

.info span {
    display: inline-block;
    margin-right: 1rem;
    background-color: #34495E;
    padding: 0.5rem 1rem;
    border-radius: 20px;
}

.sessoes {
    padding: 50px;
    text-align: center;
}



.datas button {
    margin: 8px;
    padding: 11px 24px;
    background: #2B2C42;
    color: #ECECEC;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
    
    
}

.datas button:hover {
    background-color: #2980B9;
}

.opcoes {
    display: flex;
    justify-content: center;
    gap: 32px;
    margin-top: 32px;
}

.opcoes .exibicao-horario {
    text-align: center;
}

.opcoes label {
    display: block;
    margin-bottom: 8px;
    color: #ECECEC;
}

.opcoes select {
    padding: 8px;
    font-size: 16px;
    border: 1px solid #34495E;
    border-radius: 4px;
    background-color: #2C3E50;
    color: #ECECEC;
}

.fechar-voltar {
    display: flex;
    justify-content: end;
    gap: 12px;
    margin-top: 32px;
}

.fechar-voltar button{
    background: #D0D003;
    color: #141212;
    width: 130px;
    height: 30px;
    border-radius: 14px;
    padding: 6px;
    border: none;
    cursor: pointer;
}

.fechar-voltar :hover {
    background-color: #D35400;
}



footer {
    
    background-color: #13152D;
    padding: 16px;
    color: #ECECEC;
}

.footer-logo{
    margin: 20px;
    display: flex;
    align-items: center;
    justify-items: center;
    gap: 50px;
    font-size: 40px;
    color: #D0D003;
    
}

.line{
    width: 1400px;
    height: 2px;
    background: #FFFFFFFA;

}

.container{
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin: 20px;
}

.footer-home{
    margin-top: 20px;
    font-size: 18px;
}

footer a {
    margin: 0 16px;
    color: white;
    text-decoration: none;
}

    </style>
  </head>
  <body>
    <header>
      <div class="logo">
        <img src="/img/logo.png" alt="Logo Cinemaximus" />
      </div>
      <div class="usuario">
        <span>nameUser</span>
      </div>
    </header>

    <main>
      <section class="detalhes-filme">
        <img
            src="/img/interestelar.jpg"
          alt="Interestelar"
          class="filme-poster"
        />
        <div class="info-filme">
          <h1>Interestelar</h1>
          <p>
            As reservas naturais da Terra est�o chegando ao fim e um grupo de astronautas recebe a miss�o de verificar
            poss�veis planetas para receberem a popula��o mundial, possibilitando a continua��o da esp�cie. Cooper � 
            chamado para liderar o grupo e aceita a miss�o sabendo que pode nunca mais ver os filhos. Ao lado de Brand,
            Jenkins e Doyle, ele seguir� em busca de um novo lar.
          </p>
          <div class="info">
            <span> Fic��o cient�fica/Aventura</span>
            <span> 2h 49m</span>
            <span> 92% gostaram desse filme</span>
          </div>
        </div>
      </section>

      <section class="sessoes">
        <h2>Datas dispon�veis para exibi��o:</h2>
        <div class="datas">
          <button>17 Dom</button>
          <button>18 Seg</button>
          <button>19 Ter</button>
          <button>20 Qua</button>
          <button>21 Qui</button>
          <button>22 Sex</button>
          <button>23 Sab</button>
        </div>

        <div class="opcoes">
          <div class="exibicao-horario">
            <label for="time">Selecione o hor�rio:</label>
            <select id="time">
              <option>Hor�rio</option>
            </select>
          </div>
          <div class="exibicao-horario">
            <label for="exibicao">Selecione a exibi��o:</label>
            <select id="exibicao">
              <option>Exibi��o</option>
            </select>
          </div>
        </div>

        <div class="fechar-voltar">
          <button>Fechar Pedido</button>
          <button onclick="window.location.href='/index.jsp'">Voltar</button>
        </div>
      </section>
    </main>

    <footer>
        <div class="footer-logo">
          <span>CINEMAXIMUS</span>
          <div class="line"></div>
        </div>
        <div class="container">
        <div class="footer-home">
            <a href="/index.jsp">Home</a>
          <span>Copyright � 2024</span>
        </div>
        <div class="footer-icon">
          <a href="instagram.com">
          <img src="/img/icon_instagram.png" alt="">
            </a>
          <a href="whatsapp.com">
          <img src="/img/icon_whatsapp.png" alt="">
            </a>
      </div>
    </div>
    </footer>
  </body>
</html>
