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
class Red_model extends MY_Model {

    /**
     * Nombre de la tabla gestionada por éste modelo
     * @var string
     */
    public $_table = 'red';

    /**
     * Reglas de validación utilizadas
     * por la libreria MY_Model
     * para la inserción de datos en la tabla.
     * @var array
     */
    public $validate = array(
        array('field' => 'hostname', 'label' => 'Nombre', 'rules' => 'trim|required|max_length[20]|unique[red.hostname]'),
        array('field' => 'descripcion', 'label' => 'Descripcion', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'tred_id', 'label' => 'Tipo de Red', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'serial', 'label' => 'Serial', 'rules' => 'trim|required|max_length[20]|unique[red.serial]'),
        array('field' => 'marca_id_marca', 'label' => 'Marca', 'rules' => 'trim|required'),
        array('field' => 'modelo_id', 'label' => 'Modelo', 'rules' => 'trim|required'),
        array('field' => 'usuario_id', 'label' => 'Usuario', 'rules' => 'trim|required'),
        array('field' => 'estado_id', 'label' => 'Estado', 'rules' => 'trim|required'),
    );

    /**
     * Reglas de validación utilizadas
     * por la libreria MY_Model
     * para la actualización de datos en la tabla.
     * @var array
     */
    public $validate_update = array(
        array('field' => 'hostname', 'label' => 'Nombre', 'rules' => 'trim|required|max_length[20]|unique[red.hostname]'),
        array('field' => 'descripcion', 'label' => 'Descripcion', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'tred_id', 'label' => 'Tipo de Red', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'serial', 'label' => 'Serial', 'rules' => 'trim|required|max_length[20]|unique[red.serial]'),
        array('field' => 'marca_id_marca', 'label' => 'Marca', 'rules' => 'trim|required'),
        array('field' => 'modelo_id', 'label' => 'Modelo', 'rules' => 'trim|required'),
        array('field' => 'usuario_id', 'label' => 'Usuario', 'rules' => 'trim|required'),
        array('field' => 'estado_id', 'label' => 'Estado', 'rules' => 'trim|required'),
    );

    /**
     * Este método consulta todos los usuarios
     * y su relación con la tabla usuario_rol
     * @return array Todos los grados
     *  select C.*, TC.descripcion, MA.descripcion, PRO.descripcion, SO.descripcion, US.nombre, US.apellido, E.descripcion
     *  from computadoras C inner join tcomputadora TC on C.tcomputadora_id=TC.id
     *  inner join marca MA on C.marca_id=MA.id
     *  inner join Procesador PRO on C.Procesador_id=PRO.id 
     *  inner join sistema_operativo SO on C.sistema_operativo_id=SO.id 
     *  inner join usuario US on C.usuario_id=US.id 
     *  inner join estado E on C.estado_id=E.id; 
     */
    public function getAll() {
        return $this->db
                        ->select('R.*, MA.descripcion MAdescripcion, TP.descripcion TPdescripcion,'
                                . 'MO.descripcion MOdescripcion, '
                                . 'US.nombre USNombre, US.apellido, E.descripcion Edescripcion')
                        ->from($this->_table . ' R')
                        ->join('tred TP', 'R.tred_id=TP.id')
                        ->join('marca MA', 'R.marca_id_marca=MA.id')
                        ->join('modelo MO', 'R.modelo_id=MO.id')
                        ->join('estado E', 'R.estado_id=E.id')
                        ->join('usuario US', 'R.usuario_id=US.id')
                        ->get()
                        ->result();
    }

    /**
     * Retorna el registro del usuario solicitado,
     * @param Int $id id del usuario
     * @return String Array
     */
    public function getDato($id) {
        return $this->db
                        ->select('R.*, MA.descripcion MAdescripcion, TP.descripcion TPdescripcion,'
                                . 'MO.descripcion MOdescripcion, '
                                . 'US.nombre USNombre, US.apellido, E.descripcion Edescripcion')
                        ->from($this->_table . ' R')
                        ->join('tred TP', 'R.tred_id=TP.id')
                        ->join('marca MA', 'R.marca_id_marca=MA.id')
                        ->join('modelo MO', 'R.modelo_id=MO.id')
                        ->join('estado E', 'R.estado_id=E.id')
                        ->join('usuario US', 'R.usuario_id=US.id')
                        ->get()
                        ->row();
    }

    /*
     * SELECT U.*, UR.rol_id, UD.departamento_id 
     * FROM ((usuario U INNER JOIN usuario_rol UR ON  UR.usuario_id = U.id )
     *  INNER JOIN usuario_departamento UD ON UD.usuario_id = U.id)
     */

    /**
     * Se crea el usuario en la tabla usuario,
     * y su respectiva relación en las tablas:
     *  - usuario_rol
     * @return Boolean
     */
    public function crear() {
        $data = array(
            'hostname' => $this->input->post('hostname'),
            'descripcion' => $this->input->post('descripcion'),
            'tred_id' => $this->input->post('tred_id'),
            'serial' => $this->input->post('serial'),
            'marca_id_marca' => $this->input->post('marca_id_marca'),
            'modelo_id' => $this->input->post('modelo_id'),
            'usuario_id' => $this->input->post('usuario_id'),
            'estado_id' => $this->input->post('estado_id'),
        );
        $this->db->insert('red', beforeInsert($data));
        $computadoras_id = $this->db->insert_id();

        /*
         * Se crea el rol para la persona
         */
        /* $this->db->insert('direccion_ip', beforeInsert(array('computadoras_id' => $computadoras_id, 'direccion_ip' => $this->input->post('direccion_ip'), 'observaciones' => $this->input->post('observaciones')))); */

        return TRUE;
    }

    /**
     * Método para actualizar el registro del
     * usuario y reasignar.
     * @param Int $id
     * @return Boolean
     */
    public function actualizar($id) {
        $data = array(
            'hostname' => $this->input->post('hostname'),
            'descripcion' => $this->input->post('descripcion'),
            'tred_id' => $this->input->post('tred_id'),
            'serial' => $this->input->post('serial'),
            'marca_id_marca' => $this->input->post('marca_id_marca'),
            'modelo_id' => $this->input->post('modelo_id'),
            'usuario_id' => $this->input->post('usuario_id'),
            'estado_id' => $this->input->post('estado_id'),
        );
        $this->db->where('id', $id)->update('red', beforeUpdate($data));
        /* $this->db->where('computadoras_id', $id)->update('direccion_ip', beforeUpdate(array('computadoras_id' => $id, 'direccion_ip' => $this->input->post('direccion_ip'), 'observaciones' => $this->input->post('observaciones')))); */

        return TRUE;
    }

}
