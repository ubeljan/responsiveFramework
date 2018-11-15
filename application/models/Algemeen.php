<?php defined('BASEPATH') OR exit('No direct script access allowed');

//  Algemeen
class Algemeen extends CI_Model {

    //  beginScript
    //  $this->Algemeen->beginScript() ;    
    public function beginScript()   {
        //
        $data  = array() ;  
        $vandaag  = date('Y-m-d') ;         
       
        
        //    data header basis 
        //    niv1 social_media sub1
        //    --ALTIJD AAN HET BEGIN--
        //    header    
        $query  =  $this->db->select()        
                            ->where(array('id' => '1'))        
                            ->from('header')
                            ->get() ;
        if( $query->num_rows() > '0' )  {    
            //
            $result  = $query->result() ;        
            
            //
            foreach( $result as $rij ) {        
                //
                $data['charset']  =  $rij->charset ;
                $data['author']  =  $rij->author ;
                $data['copyright']  =  $rij->copyright ;
                $data['robots']  =  $rij->robots ;
                $data['owner']  =  $rij->owner ;    
                $data['revisit_after']  =  $rij->revisit_after ;        
                $data['omschrijvingB']  =  $rij->description ;    
                $data['sleutelwoordenB']  =  $rij->keywords ;                
            }
            //-----/
            
            unset( $result ) ;
            unset( $rij ) ;
            //-----/    
        }
        
            unset( $query ) ; 
        //-----/header 
        
        
        //  basis         
        $query  =  $this->db->select()                
                            ->from('basis')
                            ->get() ;
        if( $query->num_rows() > '0' ) {                 
            //
            $result  = $query->result() ;     
            
            //
            foreach( $result as $rij ) {        
                //
                $data['naam_b']  =  $rij->naam ;
                $data['adres_b']  =  $rij->adres ;
                $data['pc_b']  =  $rij->pc ;
                $data['woonplaats_b']  =  $rij->woonplaats ;
                $data['telefoon_b']  =  $rij->telefoon ;    
                $data['email_b']  =  $rij->email ;
                $data['titel_basis_b']  =  $rij->titel ;                        
            }
            
            unset( $result ) ;
            unset( $rij ) ; 
            //-----/    
        }
        
            unset( $query ) ;  
        //-----/basis 
        
        
        //    niv1
        $query  =  $this->db->select(array( 'id',
                                            'naam',                                      
                                            'menunaam'))  
                            ->where(array(  'online'  => '1',
                                            'datum_in <='  => $vandaag,
                                            'datum_uit >'  => $vandaag))                                                
                            ->from('niv1')  
                            ->order_by('volgorde', 'ASC')
                            ->get() ;
        if( $query->num_rows() > '0' ) {  
            //
            $data['niv1']  = $query->result() ;
            
            unset( $result ) ;            
        }
        
            unset( $query ) ;  
        //-----/niv1 

            
        //=====/data                
        
        return $data ;
        //-----/
    }
    //-----/beginScript    
       

    /*
        fetchTVPVO
        $tabel  = 'tabel' ;
        $velden  = array('veld1',
                                                            'veld2') ;
        $param  = array('veld1'  => $parent_id,
                                                            'veld2'  => $child_id) ;
        $volgorde  = 'veld3' ;
        $ordening  = 'asc' ;    //  asc        desc
        $limit  = '1' ;
        $data['result']  = $this->Algemeen->fetchTVPVO($tabel, $velden, $param, $volgorde, $ordening, $limit) ;
    */
    function fetchTVPVO($tabel, $velden = NULL, $param = NULL, $volgorde = NULL, $ordening = NULL, $limit = NULL)
    {
        //  velden
        if( $velden != NULL ) {
            //
            $this->db->select($velden);

        } else {
            //
            $this->db->select();
        }
        //-----/velden

        //  param
        if( $param != NULL )
        {
            $this->db->where($param);
        }
        //-----/param

        //  tabel
        $this->db->from($tabel);

        //  ordening
        if( $ordening == NULL )
        {
            $ordening = 'asc' ;
        }
        else
        {
            $ordening = $ordening ;
        }
        //-----/ordening

        //  volgorde
        if( $volgorde != NULL )
        {
            $this->db->order_by($volgorde, $ordening);
        }
        //-----/volgorde

        //  limit
        if( $limit != NULL )
        {
            $this->db->limit($limit);
        }
        //-----/limit


        //  get
        $query = $this->db->get();

        //  return
        // $query->result_object();
        if($query->num_rows() > '0')
        {
            return $query->result_object() ;
        }

        return array();
        //-----/
    }
    //-----/fetchTVPVO

    
    //  idNniv01
    //  $this->Algemeen->eersteNiv01()
    function eersteNiv01()
    {
        //
        $vandaag  = date('Y-m-d') ;

        $query  = $this->db->select(array(  'id',
                                            'menunaam'))
                            ->where(array(  'id >'  => '0',
                                            'online'  =>    '1',
                                            'datum_in <='  => $vandaag,
                                            'datum_uit >'  => $vandaag))
                            ->order_by('volgorde', 'asc')
                            ->limit('1')
                            ->get('niv1') ;
                            
        $result  = $query->result_object() ;
        if($result)
        {
            foreach( $result as $rij )
            {
                return $rij->id ;
            }
        }
        else
        {
            return '' ;
        }
        //-----/
    }
    //-----/eersteNiv01

    
    //  id_menunaam_tabel
    //  $this->Algemeen->id_menunaam_tabel($naam, $table)
    function id_menunaam_tabel($parent_id, $child_id)
    {
        //
        $query  = $this->db->select(array('id'))
                                ->where('menunaam', $parent_id)
                                ->from($child_id)
                                ->get() ;
        $result = $query->result_object() ;
        if($result)
        {
            foreach( $result as $rij)
            {
                return $rij->id ;
            }
        }
        else
        {
            return '' ;
        }
        //-----/
    }
    //-----/id_menunaam_tabel
    
    
    //  niv2
    //  $this->Algemeen->niv2( $parent_id ) ;
    function niv2( $parent_id )
    {
        //
        $output  =   array() ;
        $vandaag  =   date('Y-m-d') ;

        $query  =  $this->db->select( array('naam as naam2',
                                            'menunaam as menunaam2',
                                            'id as id2'))
                                ->where( array('id_niv1'  =>     $parent_id,
                                               'online'  =>    '1',
                                               'datum_in <='  => $vandaag,
                                               'datum_uit >'  => $vandaag))
                                ->order_by('volgorde', 'asc')
                                ->get('niv2') ;
        $result  =  $query->result_object() ;

        if( $result ) {
            return $result ;
        }
        else {
            return $output;
        }
        //-----/
    }
    //-----/niv2
    
 
    //  geef_gestripte_tekst
    //  $this->Algemeen->geef_gestripte_tekst($parent_id)
    function geef_gestripte_tekst($parent_id)
    {
        //
        $output  = $parent_id ;
        $output  = preg_replace("_\r\n_", '', $output) ;
        $output  = preg_replace("_\n_", '', $output) ;
        $output  = preg_replace('_</p>_', '_p_', $output) ;
        $output  = preg_replace('_<br>_', '', $output) ;
        $output  = preg_replace('_<br />_', '', $output) ;
        $output  = strip_tags($output) ;
        $output  = preg_replace('_&nbsp;_', '', $output) ;

        $output  = preg_replace('/_br_/', '_p_', $output) ;
        $output  = preg_replace('/_p__br_/', '_p_', $output) ;
        $output  = preg_replace('/_br__p_/', '_p_', $output) ;
        $output  = preg_replace('/_p_/', '<br />', $output) ;
        $output  = preg_replace('_<br /><br />_', '<br />', $output) ;
        $output  = preg_replace('_<br /><br />_', '<br />', $output) ;
        $output  = preg_replace('_<br /><br />_', '<br />', $output) ;

        $output  = word_limiter($output, '35') ;
        
        return $output ;
        //-----/
    }
    //-----/geef_gestripte_tekst


    //  redirectNiv
    //  $this->Algemeen->redirectNiv( $niv, $regel, $parent_id) ;
    public function redirectNiv( $niv, $regel, $parent_id )
    {
        //
        $log_bericht = 'Niet gedefinieerde variable: niv'. $niv .' - begin/i'. $niv .' - '. $regel .' - '. $parent_id  ;

        log_message('error', $log_bericht);

        redirect( base_url(), 'refresh');
        //-----/
    }
    //-----/redirectNiv1

    
}
/* End of model Algemeen */
/* Location: ./system/application/models/Algemeen.php */