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
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CinemaMaximus</title>
        <link rel="stylesheet" href="sinopse.css">
        <style type="text/css">
            body {
                background-color: #0e0e23;
                color: #f1f1f1;
                font-family: Arial, sans-serif;
                margin: 0;
            }

            .logo{
                width: 33%;
                display: flex;
                justify-content: left;
                align-items: center;
                margin-bottom: 25px;
                margin-left: 60px;
            }

            .logo span{
                width: 200px;
                font-size: 25px;
                border-radius: 50px;
                padding: 15px;
                text-align: center;
                background-color: #5C1A2A;
                color: #FFBD59;
            }

            .conteiner {
                display: flex;
                justify-content: space-around;
                gap: 20px;
            }

            .filme img {
                width: 237.7px;
                height: 337.8px;
                border-radius: 8px;
            }

            .filme p {
                max-width: 200px;
                font-size: 14px;
                line-height: 1.6;
            }


            .horarios {
                display: flex;
                flex-wrap: wrap;
                gap: 70px;
            }

            .tipo-sala {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .tipo-sala h2 {
                font-size: 29px;
                margin-bottom: 10px;
                color: #f39c12;
            }


            .tipo-sala button {
                height: 28.2px;
                width: 180.3px;
                background-color: #5C1A2A;
                color: #FFBD59;
                padding: 8px 12px;
                margin: 5px;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                font-size: 16px;
            }

            .tipo-sala button:hover {
                background-color: darkred;
            }


            .detalhes-filme {
                display: flex;
                flex-direction: column;
                align-items: center;
                text-align: center;
                font-size: 16px;
                gap: 10px;
            }

            .detalhes-filme img {
                width: 250px;
            }


            .fechar-voltar {
                display: flex;
                justify-content: right;
                margin-right: 20px;
                gap: 25px;
                margin-bottom: 15px;
            }

            .fechar-voltar button {
                background-color: #5C1A2A;
                color: #FFBD59;
                padding: 10px 20px;
                border: none;
                border-radius: 8px;
                font-size: 16px;
                cursor: pointer;
            }

            .fechar-voltar button:hover {
                background-color: darkred
            }
        </style>
    </head>
    <body>
        <header>
            <div class="logo">
                <h1><span>CinemaMaximus</span></h1>
            </div>
        </header>

        <div class="conteiner">
            <form name = form1 action = "ingresso.jsp" enctype="mutipart/form-data">
                <input type =hidden name = filme value = <%=filme%>>
                <input type =hidden name = nome value = <%=userName%>>
                <input type =hidden name = email value = <%=userEmail%>
                <input type =hidden name = data >
                <input type =hidden name = hora >
                
                
            <div class="filme">
                <img src="<%=filme%>" alt="Poster do Filme">
                <p>As reservas naturais da Terra estão chegando ao fim e um grupo de astronautas recebe a missão de verificar possíveis planetas para receberem a população mundial, possibilitando a continuação da espécie.
                    Cooper é chamado para liderar o grupo e aceita a missão sabendo que pode nunca mais ver os filhos.
                    Ao lado de Brand, Jenkins e Doyle, ele seguirá em busca de um novo lar.</p>
            </div>

            <div class="horarios">
                <div class="tipo-sala">
                    <h2>DUB</h2>
                    <button onclick="form1.hora.value = '12:00'">12:00</button>
                    <button onclick="selecionarHorario('15:00')">15:00</button>
                    <button onclick="selecionarHorario('19:00')">19:00</button>
                </div>
                <div class="tipo-sala">
                    <h2>LEG</h2>
                    <button onclick="selecionarHorario('13:00')">13:00</button>
                    <button onclick="selecionarHorario('16:00')">16:00</button>
                    <button onclick="selecionarHorario('22:00')">22:00</button>
                </div>
                <div class="tipo-sala">
                    <h2>DUB 3D</h2>
                    <button onclick="selecionarHorario('12:00')">12:00</button>
                    <button onclick="selecionarHorario('18:00')">18:00</button>
                </div>
                <div class="tipo-sala">
                    <h2>LEG 3D</h2>
                    <button onclick="selecionarHorario('12:00')">12:00</button>
                    <button onclick="selecionarHorario('18:00')">18:00</button>
                </div>
            </div>

            <div class="detalhes-filme">
                <p>Ficção científica/Aventura</p>
                <p>86% de Aprovação</p>
                <p>Tempo de filme: 2h 45m</p>
                <img src="../img/pipoca.png" alt="Ícone de Pipoca">
            </div>
        </div>

        <div class="fechar-voltar">
            <input type = submit value = 'Fechar Pedido'>
                    
            <button onclick="window.location.href = 'index.jsp'">Voltar</button>
        </div>
                    </form>
    </body>
</html>

