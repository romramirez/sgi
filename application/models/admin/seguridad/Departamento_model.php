<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Modelo que utiliza la libreria MY_Model para 
 * la gestión de la tabla usuario.
 * Es utilizada para crear los usuarios del sistema
 *
 *
 * @package         SGI
 * @subpackage      usuario
 * @category        Modelo
 * @author          romramirez
 * @author          Rommel Ramirez
 * @link            http://sgi.sti.com/
 * @version         Current v1.0.0 
 * @copyright       Copyright (c) 2020 SGI
 * @license         MIT
 * @since           31/06/2020
 */
class Departamento_model extends MY_Model {
    /**
     * Nombre de la tabla gestionada por éste modelo
     * @var string
     */
    public $_table = 'departamento';
    /**
     * Reglas de validación utilizadas
     * por la libreria MY_Model
     * para la inserción y actualización
     * de datos en la tabla.
     * @var array
     */
    public $validate = array(
        array('field' => 'descripcion', 'label' => 'Descripcion', 'rules' => 'trim|required|max_length[30]|unique[departamento.descripcion]'),
        array('field' => 'observacion', 'label' => 'observacion', 'rules' => 'trim|required')
    );
}