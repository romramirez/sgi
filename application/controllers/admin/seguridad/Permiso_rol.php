<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Controlador que permite gestionar los Permisos por rol del sistema
 *
 * @package         SGI
 * @subpackage      Permiso_rol
 * @category        Controlador
 * @author          romramirez
 * @author          Rommel Ramirez
 * @link            http://sgi.sti.com/
 * @version         Current v1.0.0 
 * @copyright       Copyright (c) 2020 SGI
 * @license         MIT
 * @since           31/06/2020
 */
class Permiso_rol extends MY_Controller {
    /**
     * Permite la carga de los Modelos a ser usuados, en los diferentes metodos de la clase 
     * e inicializar las variables que permiten dinamizar el desarrollo
     */
    public function __construct() {
        parent::__construct();
        $this->load->model('admin/seguridad/' . modelo(), 'Modelo');
        $this->load->model(array('admin/seguridad/Rol_model', 'admin/seguridad/Permiso_model'));
        /* VARIABLES PARA DINAMIZAR */
        $this->url = base_url() . 'admin/seguridad/' . str_replace('_', '-', $this->controlador) . '/';
        $this->vista = 'admin/seguridad/' . $this->controlador . '/';
        /* END VARIABLES */
    }
    /**
     * Este método lista todos los permisos y al lado de cada uno
     * un CheckBox para cada rol.
     * En caso de que un rol tenga acceso a un menú
     * el CheckBox debe estar activado en la columna de dicho rol.
     * Los roles asignados permitirán al usuario acceder a los métodos
     * de los distintos permisos.
     * @return      String vista
     */
    public function index() {
        $data = array(
            'titulo' => $this->titulo,
            'contenido' => $this->vista . 'index'
        );
        $this->load->view(THEME . TEMPLATE, $data);
    }
    
    /**
     * Método ajax que permite al usuario 
     * asignar un permiso al rol deseado.
     * @return      void
     */
    public function crear() {
        if ($this->input->is_ajax_request()) {
            if ($this->Modelo->validar()) {
                $this->Modelo->crear();
            }
        } else {
            show_404();
        }
    }
}

