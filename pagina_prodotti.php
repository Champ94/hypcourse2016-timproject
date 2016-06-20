<!doctype html>
<?php
    require 'connessione.php';
?>
<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
        
        <title>
            Prodotti
        </title>
        
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap-theme.css">
        <link rel="stylesheet" href="css/style.css">
        
    </head>
    
    <?php
    
        $query = "
        SELECT Devices . * , Categoria.nome AS  'nome_categoria', Marca.nome AS  'nome_marca', Tipologia.nome AS  'nome_tipologia', SisOp.nome AS  'nome_sisop', Schermo.dimensione AS  'dimensione_schermo', Connessione.tipo AS  'tipo_connessione'
        FROM Devices, Categoria, Marca, Tipologia, SisOp, Schermo, Connessione
        WHERE Devices.idDevices =1
            AND Devices.categoriaID = Categoria.idCategoria
            AND Devices.marcaID = Marca.idMarca
            AND Devices.tipologiaID = Tipologia.idTipologia
            AND Devices.sisopID = SisOp.idSisOp
            AND Devices.schermoID = Schermo.idSchermo
            AND Devices.connessioneID = Connessione.idConnessione
        ";

        $dati = mysqli_query($con, $query);
        
        if(mysqli_num_rows($dati) > 0) {
            while($riga = mysqli_fetch_assoc($dati)) {
                $nome_categoria = $riga["nome_categoria"];
                $nome_prodotto = $riga["nome"];
                $caratteristiche = $riga["caratteristiche"];
                $prezzo_intero = $riga["prezzo_intero"];
                $prezzo_rate = $riga["prezzo_rate"];
                $n_rate = $riga["n_rate"];
                $prezzo_scontato = $riga["prezzo_scontato"];
                $promo = $riga["promo"];
                $novita = $riga["novita"];
                $disponibile = $riga["disponibile"];
                $descrizione = $riga["descrizione"];
                $inclusi = $riga["inclusi"];
                $specifiche = $riga["specifiche"];
            }
        }
    
    ?>
    
    <body>
        
        <!-- MAIN HEADER -->
		<nav class="navbar navbar-default tim-header">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand timbrand" href="#">
						<img alt="TIM" src="img/logo.png">
					</a>
				</div>
                <div class="collapse navbar-collapse" id="header">
                    <ul class="nav navbar-nav">
                        <li><a href="#" style="color:white;">Chi siamo</a></li>
                        <li><a href="#" style="color:white;">Il gruppo</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#" style="color:white;">PRODOTTI</a></li>
                        <li><a href="#" style="color:white;">SMARTLIFE</a></li>
                        <li><a href="#" style="color:white;">ASSISTENZA</a></li>
                        <a class="navbar-brand cartbrand" href="#">
                            <img class="cartlogo" alt="Carrello" src="img/cart.png">
                        </a>
                    </ul>
                </div>
            </div>
        </nav>
        
        <ol class="breadcrumb">
            <li><a href="#">Prodotti</a></li>
            <li><a href="#"><?php echo $nome_categoria; ?></a></li>
            <li class="active"><?php echo $nome_prodotto; ?></li>
        </ol>
        
        <div class="container-fluid">
            
            <div class="row">
                <div class="col-md-5 col-md-offset-1"> foto
                </div>
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-md-6"><p><?php echo $nome_prodotto; ?></p></div>
                        <?php
                            
                            if($novita==1) {
                                echo '
                                    <div class="col-md-6"><span class="label label-primary">Novità</span></div>
                                ';
                            }
                        
                        ?>
                    </div>
                    <p>Caratteristiche:<br><?php echo $caratteristiche; ?></p>
                    <div class="row">
                        <div class="col-md-2"><p>Colore:</p></div>
                        <div class="col-md-8">
                            <div class="color-buttons" style="background-color:black;"></div>
                            <div class="color-buttons" style="background-color:white;"></div>
                            <div class="color-buttons" style="background-color:blue;"></div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-5 col-md-offset-1"> 
                    <div class="row">
                        <div class="col-md-6">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Unica Soluzione
                                </label>
                            </div>
                            <p class="tim-pricetext">789.90 €</p>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="checkbox">
                                <label class="tim-cbtext">
                                    <input type="checkbox">In 36 rate senza interessi
                                </label>
                            </div>
                            <p class="tim-pricetext">21.94 €/mese</p>
                            <p class="tim-u-cbtext">Se hai una linea di casa TIM</p>
                        </div>
                    </div>
                </div>
                 <div class="col-md-5"> 
                    <button type="button" class="btn btn-primary btn-lg active tim-acquista">Acquista</button>

                </div>
            </div>
            
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#home">DESCRIZIONE</a></li>
                        <li><a data-toggle="tab" href="#menu1">INCLUSI NEL PREZZO</a></li>
                        <li><a data-toggle="tab" href="#menu2">SPECIFICHE TECNICHE</a></li>
                    </ul>

                    <div class="tab-content">
                        <div id="home" class="tab-pane fade in active">
                            <h3>DESCRIZIONE</h3>
                            <p>Some content.</p>
                        </div>
                        <div id="menu1" class="tab-pane fade">
                            <h3>INCLUSI NEL PREZZO</h3>
                            <p>Some content in menu 1.</p>
                        </div>
                        <div id="menu2" class="tab-pane fade">
                            <h3>SPECIFICHE TECNICHE</h3>
                            <p>Some content in menu 2.</p>
                        </div>
                    </div>
                </div>
            </div>
                
        </div>
        
        <nav class="navbar navbar-default navbar-fixed-bottom tim-footer">
            <div class="container-fluid tim-footer">
                <div class="collapse navbar-collapse" id="footer">
                    <ul class="nav navbar-nav">
                        <li><a style="padding-top:5px; padding-bottom:5px; color:white;" href="#">Privacy</a></li>
                        <li><a style="padding-top:5px; padding-bottom:5px; color:white;" href="#">Note legali</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <a class="navbar-brand" style="padding-top:3px; padding-bottom:3px;" href="#">
                            <img alt="Facebook" src="img/fblogo.png">
                        </a>
                        <a class="navbar-brand" style="padding-top:3px; padding-bottom:3px;" href="#">
                            <img alt="Twitter" src="img/twitterlogo.png">
                        </a>
                        <a class="navbar-brand" style="padding-top:3px; padding-bottom:3px;" href="#">
                            <img alt="Youtube" src="img/youtubelogo.png">
                        </a>
                        <a class="navbar-brand" style="padding-top:3px; padding-bottom:3px;" href="#">
                            <img alt="Google+" src="img/gpluslogo.png">
                        </a>
                    </ul>
                </div>
            </div>
        </nav>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </body>
       
</html>