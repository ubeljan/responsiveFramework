<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//

    //  headerV
    $this->load->view('headerV');
    
   
    //  viewVar
    if( isset($viewVar)  &&  strlen($viewVar) > '0' ) {        
        //
        $this->load->view( $viewVar );    

    } else {  $this->load->view( 's_leegV' ) ;  }
    //-----/viewVar

    
    //  viewVar
    if( isset($viewVar2)  &&  strlen($viewVar2) > '0' ) {        
        //
        $this->load->view( $viewVar2 );    

    } else {  $this->load->view( 's_leegV' ) ;  }
    //-----/viewVar
    
    
    //  Footer
    $this->load->view('footerV');     

//-----/    