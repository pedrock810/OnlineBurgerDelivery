<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <link rel = "icon" href ="/OnlineBurgerDelivery/img/logotip.jpg" type = "image/x-icon">

<style>
    body{
		width: 100%;
	    height: calc(100%);
	    /*background: #007bff;*/
	}
	main#main{
		width:100%;
		height: calc(100%);
		background:white;
	}
	#login-right{
		position: absolute;
		right:0;
		width:40%;
		height: calc(100%);
		background:white;
		display: flex;
		align-items: center;
	}
	#login-left{
		position: absolute;
		left:0;
		width:60%;
		height: calc(100%);
        background-color: #201b2c;
		display: flex;
		align-items: center;
	}
    .card-login{
    width: 60%;
    height: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    padding: 30px 35px;
    background: #2f2841;
    border-radius: 20px;
    box-shadow: 0px 10px 40px #00000056;
    margin-left: auto;
    margin-right: auto;
    }
	.logo {
	    margin: auto;
	    font-size: 8rem;
	    height: 35vh;
	    width: 35vw;
	    display: flex;
	    align-items: center;
	}

    
.textfield{
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: center;
    margin: 10px 0px;
} 

.textfield > input{
    width: 100%;
    border: none;
    border-radius: 10px;
    padding: 15px;
    background: #514869;
    font-size: 12pt;
    box-shadow: 0px 10px 40px #00000056;
    outline: none;
    box-sizing: border-box;
    color:white;
}

.textfield > label{
    color: #f0ffffde;
    margin-bottom: 10px; ;
}

.textfield > input::placeholder{
    color: #f0ffff94;
}

.btn-login{
    width: 100%;
    padding: 14px 0px;
    margin-left: auto;
    margin-right: auto;
    margin-top: 15px;
    border: none;
    border-radius: 8px;
    background: #00ff88;
    text-transform: uppercase;
    font-weight: 800;
    letter-spacing: 3px;
    color: #2b134b;
    text-align: center;
    cursor: pointer;
    box-shadow: 0px 10px 40px -12px #00ff8052;
    
}

    
</style>
</head>
<body>
    <main id="main" class=" bg-dark">
        <div id="login-left">
            <div class="logo">
                <img src="/OnlineBurgerDelivery/img/animate.svg" alt="">
            </div>
        </div>
        <div id="login-right">
            <div class="card-login">  
                <form action="partials/_handleLogin.php" method="post">
                    <div class="textfield">
                    <label for="username" class="control-label"><b>Username</b></label>
                    <input type="text" id="username" name="username" class="form-control">
                    </div>
                    <div class="textfield">
                    <label for="password" class="control-label"><b>Password</b></label>
                    <input type="password" id="password" name="password" class="form-control">
                    </div>
                    <center><button type="submit" class="btn-login">Login</button></center>
                </form>
            </div>
        </div>
    </main>  


    <?php
        if(isset($_GET['loginsuccess']) && $_GET['loginsuccess']=="false"){
        echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
                <strong>Warning!</strong> Invalid Credentials
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span></button>
                </div>';
        }
    ?>

</body>
</html>