<?php
defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Modelo que utiliza la libreria MY_Model para
 * la gestión de la tabla tipo menu.
 * Es utilizada para crear los usuarios del sistema
 *
 * @package         SGI
 * @subpackage      Generales
 * @category        Modelo
 * @author          romramirez
 * @author          Rommel Ramirez 
 * @link            http://sgi.sti.com/
 * @version         Current v1.0.0
 * @copyright       Copyright (c) 2020 SGI
 * @license         MIT
 * @since           31/06/2020
 */
class Tsolicitud_model extends MY_Model
{
    /**
     * Nombre de la tabla gestionada por éste modelo
     * @var string
     */
    public $_table = 'tsolicitud';
    /**
     * Reglas de validación utilizadas
     * por la libreria MY_Model
     * para la inserción y actualización
     * de datos en la tabla.
     * @var array
     */
    public $validate = array(
        array('field' => '  nombre', 'label' => 'Nombre', 'rules' => 'trim|required|max_length[30]|unique[tsolicitud.nombre]'),
    );
}
