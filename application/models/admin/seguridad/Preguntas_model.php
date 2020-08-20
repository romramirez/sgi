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
 * @author          Romramirez
 * @author          Rommel Ramirez
 * @link            http://sgi.sti.com.ve/
 * @version         Current v0.1.0 
 * @copyright       Copyright (c) 2017 SGI
 * @license         MIT
 * @since           31/06/2017
 */
class Preguntas_model extends MY_Model {
    /**
     * Nombre de la tabla gestionada por éste modelo
     * @var string
     */
    public $_table = 'preguntas_seguridad';
    /**
     * Reglas de validación utilizadas
     * por la libreria MY_Model
     * para la inserción y actualización
     * de datos en la tabla.
     * @var array
     */
    public $validate = array(
        array('field' => 'descripcion', 'label' => 'Descripcion', 'rules' => 'trim|required|unique[respuestas_seguridad.descripcion]'),
        array('field' => 'preguntas_id', 'label' => 'Pregunta', 'rules' => 'trim|required'),
    );
}