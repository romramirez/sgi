<?php

defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Modelo que utiliza la libreria MY_Model para
 * la gestión de la tabla permiso.
 * Es utilizada para crear los usuarios del sistema
 *
 * @package         SGI
 * @subpackage      Admin
 * @category        Modelo
 * @author          romramirez
 * @author          Rommel Ramirez 
 * @link            http://sgi.sti.com/
 * @version         Current v1.0.0
 * @copyright       Copyright (c) 2020 SGI
 * @license         MIT
 * @since           31/06/2020
 */
class Country_model extends MY_Model
{
    /**
     * Nombre de la tabla gestionada por éste modelo
     * @var string
     */
    public $_table = 'countries';

    public $validate = array(
        array('field' => 'id', 'label' => 'ID', 'rules' => 'trim|required|max_length[50]|unique[permiso.nombre]'),
        array('field' => 'country_name', 'label' => 'Pais', 'rules' => 'trim|required|max_length[45]|unique[permiso.nombre_a_mostrar]'),

    );

    public function get_countries()
    {
        return $this->db
            ->select('Co.*')
            ->from($this->_table . ' Co')
            ->get()
            ->result();
    }

}
