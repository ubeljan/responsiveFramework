<?php defined('BASEPATH') OR exit('No direct script access allowed');

?> 

    <!-- .section group -->
    <div class="section group">
        
        <!-- Mobile menu toggle button (hamburger/x icon) -->
        <input id="main-menu-state" type="checkbox" />
        <label class="main-menu-btn" for="main-menu-state">
            <span class="main-menu-btn-icon"></span> 
        </label>   
        
        <h2 class="nav-brand">
            <a class="nav-brand2" href="<?php echo base_url() ; ?>"><img class="logoBoven" src="<?php echo base_url() ; ?>afbeeldingen/logo/responsive_framework.png" style="height:59px;width:176px;" alt="Responsive Framework" /></a>
        </h2>        
        
        <!-- Menu definition -->
        <ul id="main-menu" class="sm sm-simple">
                        
<?php

    if( isset($niv1) )  {
        foreach( $niv1 as $rij1 ) {
            //         
            if( $rij1->id > '1' )  {
                //
                echo '<li><a';
                
                if( $idNiv1  ==  $rij1->id ) {
                    //
                    echo ' class="actief" ' ;
                }
                
                echo ' href="'. base_url() . $rij1->menunaam .'">'. $rij1->naam .'</a>' ;

                    $niv2  =  $this->Algemeen->niv2( $rij1->id ) ;

                    if($niv2) {

                        echo '<ul>' ;

                        foreach( $niv2 as $rij2 ) {
                            //
                            echo '<li><a href="'. base_url() . $rij1->menunaam .'/'. $rij2->menunaam2 .'">'. $rij2->naam2 .'</a></li>' ;
                        }

                        echo '</ul>' ;

                    }

                echo '</li>'."\n" ;

            }
        }
    }

?>                        
        </ul>
        <!-- /Menu definition -->
        	
    </div><!-- /section group -->  

    <div class="bureau1"> &nbsp; </div>
    
   <div class="wit">
    
    <!-- .section group -->
    <div class="section group">
    
        <!-- col -->
        <div class="col">
            <h1 class="h1"><?php echo $naamNiv1 ; ?></h1>
        </div><!-- /col -->
        
    </div><!-- /section group -->
    
        
    <!-- .section group -->
    <div class="section group">

        <!-- col -->
        <div class="col span_2_of_3">

<?php

    if( $tekstNiv1 ) { 
        //
        echo $tekstNiv1;

        echo '<div class="ruimteOnderArtikel"> &nbsp; </div>';
    }


?>

        </div><!-- /col -->
        
        <!-- col -->
        <div class="col span_1_of_3">
            <?php $this->load->view('s_vbV') ; ?>
        </div><!-- /col -->
     
    </div><!-- /section group -->
 

</div><!-- /wit -->
  
