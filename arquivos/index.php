<?php
//Conexão
require_once 'login/db_connect_login.php';

//SESSÂO
session_start();

if(isset($_POST['btn-entrar'])):
    $erros = array();
    $login = mysqli_escape_string($connect, $_POST['login']);
    $senha = mysqli_escape_string($connect, $_POST['senha']);

    if(empty($login) or empty($senha)):
        $erros[] = "preencher login/senha";
   
    else:

        $sql = "SELECT login FROM usuarios WHERE login = '$login'";
        $resultado = mysqli_query($connect, $sql);

        if(mysqli_num_rows($resultado) > 0):

            $senha = md5($senha);
            $sql = "SELECT * FROM usuarios WHERE login = '$login' AND senha = '$senha'";
            $resultado = mysqli_query($connect, $sql);
            
            if(mysqli_num_rows($resultado) == 1):
                
                $dados = mysqli_fetch_array($resultado);
                mysqli_close($connect);
                
                $_SESSION['logado'] = true;
                $_SESSION['id_usuario'] = $dados['id'];
                header('Location: login/home.php');

                else:
                    $erros[] = "<li>Usuário e senha não conferem</li>";
            endif;

            else:
                $erros[] = "<li>Usuário inexistente</li>";
        endif;

    endif;

endif;

?>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style/mystyle.css">
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=devide-width, initial-scale=1.0">
        <meta name = "description" content = "Login - Cadastro de Profissionais">
    </head>

    <body>
    <main>
            <div class = "container">

                <div class="leftContent">
                    <h2 class="leftTitle">Seja bem-vindo</h2>
                    <p class="leftText">Para acessar o sistema de cadastro de<br> profissionais, por favor, faça o login.</p>
                    <figure class="leftLogo">
                        <img id="logo" src = "images/arcondicionado.png" alt="logo">
                    </figure>
                </div>

                

                <div class = "rightContent">
                    

                    <h1>Faça o seu login</h1>
                    
                    <?php
                        if(!empty($erros)):
                            foreach($erros as $erro):
                                echo $erro;
                            endforeach;
                        endif;
                    ?>

                    <form class="form" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
                        
                        <div class="formGroup">
                            <label for="login">Login:</label>
                            <input type="text" name="login" placeholder="Nome do usuário">
                        </div>

                        <div class="formGroup">
                            <label for="password">Senha:</label>
                            <input type="password" name="senha" placeholder="Digite a sua senha">
                        </div>

                        <button type="submit" name="btn-entrar" id="btn-entrar">Login</button>
                    </form>

                </div>

            </div>
        </body>
    </main>
</html>