<%
    if(session.getAttribute("usuario") == null){
        response.sendRedirect("login.jsp");
    }
    Entidad.Usuario Usuario = (Entidad.Usuario)session.getAttribute("usuario");
    String nombre = Usuario.getNombre();
%>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<!-- Iconos -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

<style>
body{
    margin:0;
    font-family: Arial, sans-serif;
    display:flex;
}

/* ===== SIDEBAR ===== */
.sidebar{
    width:250px;
    height:100vh;
    background:#1e1e2f;
    color:white;
    position:fixed;
    left:0;
    top:0;
    transition:0.3s;
}

.sidebar.closed{
    left:-250px;
}

.profile{
    text-align:center;
    padding:20px;
}

.profile img{
    width:80px;
    height:80px;
    border-radius:50%;
}

.menu{
    margin-top:20px;
}

.menu a{
    display:block;
    color:white;
    padding:12px 20px;
    text-decoration:none;
}

.menu a:hover{
    background:#333;
}

/* bottom */
.bottom{
    position:absolute;
    bottom:20px;
    width:100%;
    display:flex;
    justify-content:space-around;
}

/* ===== MAIN ===== */
.main{
    margin-left:250px;
    padding:20px;
    width:100%;
    transition:0.3s;
}

.main.full{
    margin-left:0;
}

/* top bar */
.topbar{
    display:flex;
    align-items:center;
    justify-content:space-between;
}

.toggle{
    font-size:24px;
    cursor:pointer;
}

/* mesas */
.mesas{
    display:flex;
    gap:10px;
    margin-top:20px;
}

.mesa{
    padding:20px;
    border-radius:10px;
    color:white;
}

.libre{ background:green; }
.ocupado{ background:red; }

/* boton carta */
.btn-carta{
    margin-top:40px;
    padding:15px;
    background:#ff6600;
    color:white;
    border:none;
    border-radius:10px;
    font-size:16px;
    cursor:pointer;
}
</style>
</head>

<body>

 
<div id="sidebar" class="sidebar">

    <div class="profile">
        <img src="img/user-logo.png">
        <h3><%=nombre%></h3>
        <p>Administrador</p>
    </div>

    <div class="menu">
        <a href="#"><i class="fa fa-box"></i> Catálogos</a>
        <a href="#"><i class="fa fa-utensils"></i> Cocina</a>
        <a href="pedido.jsp"><i class="fa fa-receipt"></i> Pedidos</a>
        <a href="#"><i class="fa fa-credit-card"></i> Pagos</a>
        <a href="#"><i class="fa fa-truck"></i> Entregas</a>
        <a href="#"><i class="fa fa-chart-bar"></i> Reportes</a>
    </div>

    <div class="bottom">
        <a href="login.jsp"><i style="color:white;" class="fa fa-sign-out-alt"></i></a>
        <a href="#"><i style="color:white;"  class="fa fa-cog"></i></a>
    </div>

</div>

 
<div id="main" class="main">

    <div class="topbar">
        <i id="toggleBtn" class="fa fa-times toggle"></i>
        <h2>Bienvenido, <%=nombre%></h2>
    </div>

 
    <div class="mesas">
        <div class="mesa libre">Mesa 1 - Libre</div>
        <div class="mesa ocupado">Mesa 2 - Ocupado</div>
        <div class="mesa libre">Mesa 3 - Libre</div>
    </div>

 
    <button class="btn-carta">Ver Carta</button>

</div>

<script>
const btn = document.getElementById("toggleBtn");
const sidebar = document.getElementById("sidebar");
const main = document.getElementById("main");

btn.addEventListener("click", () => {
    sidebar.classList.toggle("closed");
    main.classList.toggle("full");

    btn.classList.toggle("fa-bars");
    btn.classList.toggle("fa-times");
});
</script>

</body>
</html>