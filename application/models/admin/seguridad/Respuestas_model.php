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
class Respuestas_model extends MY_Model {

    /**
     * Nombre de la tabla gestionada por éste modelo
     * @var string
     */
    public $_table = 'respuestas_seguridad';

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

    public function getAll() {
        return $this->db
                        ->select('PS.descripcion Pregunta, RS.*, US.id idUsuario, US.nombre, US.apellido')
                        ->from($this->_table . ' RS')
                        ->join('preguntas_seguridad PS', 'RS.preguntas_id=PS.id')
                        ->join('usuario US', 'RS.usuario_id=US.id')
                        ->get()
                        ->result();
    }

    public function getDato($id) {
        return $this->db
                        ->select('US.id idUsuario, RS.*')
                        ->from($this->_table . ' RS')
                        ->join('usuario US', 'RS.usuario_id = US.id AND RS.id= ' . $id)
                        ->get()
                        ->row();
    }

    public function getTotalReg() {
        return count($this->db
                        ->select('PS.descripcion Pregunta, RS.*, US.id idUsuario, US.nombre, US.apellido')
                        ->from($this->_table . ' RS')
                        ->join('preguntas_seguridad PS', 'RS.preguntas_id=PS.id')
                        ->join('usuario US', 'RS.usuario_id=US.id')
                        ->get()
                        ->result());
    }

}
