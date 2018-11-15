<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

// Begin 
class Begin extends CI_Controller  {

    // __construct
    function __construct() {
        //
        parent::__construct();

        // Start session 
        if ( !isset($_SESSION) ) { session_start() ; }         
        //-----/
    }
    //-----/__construct


    // Index
    public function index() {        
        // data  =>  header  -  basis  -  social_media
        // --ALTIJD AAN HET BEGIN--
        $data  =  $this->Algemeen->beginScript() ;            
       
        //=====    Init
        $parent_id  =  'home' ;
        $vandaag  =  date('Y-m-d') ;             
        $data['parent_id']  =  $parent_id ;
        //=====/Init 

        //===== niv1 - eerste
        $idNiv1  =  $this->Algemeen->eersteNiv01() ;
        $data['idNiv1']  =  $idNiv1 ;
        
        // $idNiv1 
            $tabel  = 'niv1' ;    
            $velden  = array();    
            $param  = array('id' => $idNiv1) ;
        $niv1A  = $this->Algemeen->fetchTVPVO($tabel, $velden, $param) ;                                        
        foreach( $niv1A as $rij )  {     
            //
            $data['naamNiv1']  =  $rij->naam ;        
            $data['tekstNiv1']  =  $rij->tekst ;
            $data['menunaamNiv1']  =  $rij->menunaam ; 
            $data['omschrijvingNiv1']  =  $rij->omschrijving ;
            $data['sleutelwoordenNiv1']  =  $rij->sleutelwoorden  ;
        }
        //=====/niv1 - eerste      
                
        //
        $data['viewVar']  =  's_niv1V' ;        
        $data['viewVar2']  =  's_footerV' ;

        //
        $this->load->view('templateV', $data);
        //-----/
    }
    //-----/Index
        
    
    // i
    public function i( $parent_id ) {
        
        // data  =>  header  -  basis  -  social_media
        // --ALTIJD AAN HET BEGIN--
        $data  =  $this->Algemeen->beginScript() ;            
       
        //=====    Init
        $parent_id  =  $this->Algemeen->geef_gestripte_tekst($parent_id) ;
        $vandaag  =  date('Y-m-d') ;             
        $data['parent_id']  =  $parent_id ;
        //=====/Init 
        
         //===== idNiv1 redirect
        $idNiv1  =  $this->Algemeen->id_menunaam_tabel($parent_id, 'niv1') ;
        $data['idNiv1']  =  $idNiv1 ; 
        if( $idNiv1  ==  ''  ||  $idNiv1  <  '1'  ) {  $this->Algemeen->redirectNiv( '1', '1',  $parent_id) ; }        
        //=====/idNiv1 redirect    

        
        // $idNiv1 
            $tabel  =  'niv1' ;    
            $velden  =  array();    
            $param  =  array('id' => $idNiv1) ;
        $niv1A  =  $this->Algemeen->fetchTVPVO($tabel, $velden, $param) ;                                        
        foreach( $niv1A as $rij ) {
            //
            $data['naamNiv1']  =  $rij->naam ;                    
            $data['tekstNiv1']  =  $rij->tekst ;
            $data['menunaamNiv1']  =  $rij->menunaam ;       
            $data['omschrijvingNiv1']  =  $rij->omschrijving ;
            $data['sleutelwoordenNiv1']  =  $rij->sleutelwoorden  ;
        }
        //=====/niv1 - eerste      
                
        //
        $data['viewVar']  =  's_niv1V' ;    
        $data['viewVar2']  =  's_footerV' ;          
        
        //
        $this->load->view('templateV', $data);
        //-----/
    }
    //-----/i


    // i2
    public function i2( $parent_id, $child_id ) {
        // data  =>  header  -  basis  -  social_media
        // --ALTIJD AAN HET BEGIN--
        $data  =  $this->Algemeen->beginScript() ;

        //=====    Init
        $parent_id  =  $this->Algemeen->geef_gestripte_tekst($parent_id) ;
        $child_id  =  $this->Algemeen->geef_gestripte_tekst($child_id) ;
        $vandaag  =  date('Y-m-d') ;
        $data['parent_id']  =  $parent_id ;
        $data['child_id']  =  $child_id ;
        //=====/Init


        //===== idNiv1 redirect
        $idNiv1  =  $this->Algemeen->id_menunaam_tabel($parent_id, 'niv1') ;
        $data['idNiv1']  =  $idNiv1 ;
        if( $idNiv1  ==  ''  ||  $idNiv1  <  '1'  ) { $this->Algemeen->redirectNiv( '1', '2',  $parent_id) ;  }
        //=====/idNiv1 redirect


        //===== idNiv2 redirect
        $idNiv2  =  $this->Algemeen->id_menunaam_tabel($child_id, 'niv2') ;
        $data['idNiv2']  =  $idNiv2 ;

        if( $idNiv1  ==  ''  || $idNiv1  <  '1' ) { $this->Algemeen->redirectNiv( '2', '2',  $child_id) ; }
        //=====/idNiv2 redirect

        // $idNiv1
        $tabel  =  'niv2' ;
        $velden  =  array();
        $param  =  array('id' => $idNiv2) ;
        $niv2A  =  $this->Algemeen->fetchTVPVO($tabel, $velden, $param) ;
        foreach( $niv2A as $rij ) {
            $data['naamNiv1']  =  $rij->naam ;
            $data['tekstNiv1']  =  $rij->tekst ;
            $data['menunaamNiv1']  =  $rij->menunaam ;
            $data['omschrijvingNiv1']  =  $rij->omschrijving ;
            $data['sleutelwoordenNiv1']  =  $rij->sleutelwoorden  ;
        }
        //=====/niv1 - eerste

        //
        $data['viewVar']  =  's_niv1V' ;
        $data['viewVar2']  =  's_footerV' ;        

        //
        $this->load->view('templateV', $data);
        //-----/
    }
    //-----/i2
   

}
/* End of controller Begin */
/* Location: ./application/controllers/Begin.php */