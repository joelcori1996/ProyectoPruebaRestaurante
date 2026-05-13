 <%
    if(session.getAttribute("usuario") != null){
        response.sendRedirect("dashboard.jsp");
        return;
    }
  
%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<style>
    body {
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #ff6b6b, #ffb347);
        font-family: Arial, sans-serif;
    }

    .login-container {
        background: #fff;
        padding: 35px;
        border-radius: 15px;
        width: 320px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        text-align: center;
    }

    .login-container h2 {
        margin-bottom: 20px;
        color: #333;
    }

    .input-group {
        margin-bottom: 15px;
        text-align: left;
    }

    .input-group label {
        font-size: 14px;
        color: #555;
    }

    .input-group input {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ddd;
        border-radius: 8px;
        outline: none;
        transition: 0.3s;
    }

    .input-group input:focus {
        border-color: #ff6b6b;
        box-shadow: 0 0 5px rgba(255,107,107,0.5);
    }

    button {
        width: 100%;
        padding: 10px;
        background: #ff6b6b;
        border: none;
        color: white;
        border-radius: 8px;
        font-size: 15px;
        cursor: pointer;
        transition: 0.3s;
    }

    button:hover {
        background: #ff3b3b;
    }

    .footer {
        margin-top: 10px;
        font-size: 12px;
        color: #888;
    }
</style>
</head>

<body>
   
<div class="login-container">
  <div style="display:flex; flex-direction:column; align-items:center; gap:10px; margin-bottom:20px;">
        <img src="img/logo-food-express.png" alt="FOOD-EXPRESS" width="80">

        <h2 style="
            margin:0;
            color:#4fc3f7;
            font-family:'Segoe UI', Roboto, Arial, sans-serif;
            font-weight:600;
            letter-spacing:1px;
        ">
            FOOD-EXPRESS
        </h2>
    </div>
    <form method="POST" action="LoginServlet">
        <div class="input-group">
            <label>Usuario</label>
            <input type="text" name="username" required>
        </div>

        <div class="input-group">
            <label>Contraseña</label>
            <input type="password" name="password" required>
        </div>

        <button type="submit">Ingresar</button>
    </form>

    <div class="footer">
        Sistema de pedidos © 2026 new  ssss aaaaaaaaaaaaaaaa wwwwwww
    </div>
</div>

</body>
</html>
