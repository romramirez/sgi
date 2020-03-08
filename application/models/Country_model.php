<?php

defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Modelo que utiliza la libreria MY_Model para
 * la gestión de la tabla permiso.
 * Es utilizada para crear los usuarios del sistema
 *
 * @package         GRATIACMS
 * @subpackage      Admin
 * @category        Modelo
 * @author          tutorialesvirtuales.com
 * @author          Roosevelt Guinand
 * @link            http://tutorialesvirtuales.com
 * @version         Current v1.0.0
 * @copyright       Copyright (c) 2010 - 2015 tutorialesvirtuales
 * @license         MIT
 * @since           06/08/2015
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
