<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Controlador que permite gestionar los registro de usuarios del sistema
 *
 * @package         SGI
 * @subpackage      Usuario
 * @category        Controlador
 * @author          romramirez
 * @author          Rommel Ramirez
 * @link            http://sgi.sti.com/
 * @version         Current v1.0.0
 * @copyright       Copyright (c) 2020 SGI
 * @license         MIT
 * @since           31/06/2020
 */
class Red extends MY_Controller {

    /**
     * Permite la carga de los Modelos a ser usuados, en los diferentes metodos de la clase
     * e inicializar las variables que permiten dinamizar el desarrollo
     */
    public function __construct() {
        parent::__construct();
        $ruta = 'dashboard/';
        $rutaAdmin = 'admin/inventario/';
        $rutaGeneral = 'admin/generales/';
        $rutaUsuario = 'admin/seguridad/';
        $this->load->model($ruta . modelo(), 'Modelo');
        $this->load->model($rutaAdmin . 'Tred_model');
        $this->load->model($rutaAdmin . 'Marca_model');
        $this->load->model($rutaAdmin . 'Modelo_model');
        $this->load->model($rutaGeneral . 'Estado_model');
        $this->load->model($rutaUsuario . 'Usuario_model');

        /* VARIABLES PARA DINAMIZAR */
        $this->url = base_url() . $ruta . str_replace('_', '-', $this->controlador) . '/';
        $this->vista = $ruta . $this->controlador . '/';
        /* END VARIABLES */
    }

    /**
     * Lista todos las usuarios de rol super-administrador
     * registrados en la DB.
     * @return      String vista
     */
    public function index() {
        $data = array(
            'titulo' => $this->titulo,
            'contenido' => $this->vista . 'index',
        );
        $this->load->view(THEME . TEMPLATE, $data);
    }

    /**
     * Este método primero consulta si esta recibiendo datos via POST,
     * y si es así valida y guarda el registro del nuevo usuario super-administrador
     * en la tabla, de lo contrario carga el formulario para crear un nuevo registro
     * @return  Mixed
     *          - Si recibe y valida los datos via POST redirecciona hacia el método Index
     *          - Si no carga la vista del formulario
     */
    public function crear() {
        $this->form_validation->set_rules($this->Modelo->validate);
        if ($this->form_validation->run() === TRUE) {
            $this->Modelo->crear(); //No utiliza el método insert de my_model
            mensaje_alerta('hecho', 'crear');
            redirect($this->url);
        } else {
            $data = array(
                'titulo' => 'Crear ' . $this->titulo,
                'contenido' => $this->vista . 'crear',
            );
            $this->load->view(THEME . TEMPLATE, $data);
        }
    }

    /**
     * Este método primero consulta si esta recibiendo datos via POST,
     * y si es así valida y actualiza el registro del usuario en la tabla,
     * de lo contrario carga el formulario para que el usuario
     * edite el registro cuyo id se recibe como parametro.
     * @param   integer $id id del registro
     * @return  Mixed si recibe y valida los datos via POST
     *          redirecciona hacia el método Index
     *          de lo contrario carga la vista del formulario
     */
    public function actualizar($id = FALSE) {
        $this->form_validation->set_rules($this->Modelo->validate_update);
        if ($this->form_validation->run() === TRUE) {
            $this->Modelo->actualizar($id); //No utiliza el método update de my_model
            mensaje_alerta('hecho', 'actualizar');
            redirect($this->url);
        } else {
            $dato = $this->Modelo->getDato($id);
            $data = array(
                'titulo' => 'Actualizar ' . $this->titulo,
                'contenido' => $this->vista . 'crear',
                'data' => $dato ? $dato : show_404()
            );
            $this->load->view(THEME . TEMPLATE, $data);
        }
    }

    /* esta funcion realiza la eliminacion de los registros de la tablas usuario y usuario_rol
     * permitiendo la normalizacion de los elementos en ambas tablas
     *
     *
     */

    public function eliminar($id = FALSE) {
        if ($this->Modelo->delete($id)) {
            mensaje_alerta('hecho', 'eliminar');
        } else {
            mensaje_alerta('error', 'eliminar');
        }
        redirect($this->url);
    }

    /**
     * Cambia un usuario de estado de acuerdo al estado recibido como parametro
     * @param Int $id
     * @param Int $estado
     * @return Redirect to Index
     */
    public function cambiar_estado($id = FALSE, $estado = NULL) {
        if ($id && $estado !== NULL) {
            $this->Modelo->update($id, array('estado' => $estado), TRUE);
            $estado === '0' ? mensaje_alerta('hecho', 'desactivar') : mensaje_alerta('hecho', 'activar');
            redirect($this->url);
        } else {
            show_404();
        }
    }
    public function reporte()
    {
        
        $datas = $this->Modelo->getAll();
        $data = [
        'titulo'    => $this->titulo];
        $html = $this->load->view('dashboard/red/reporte', $data, TRUE);
        $filename = 'redes';
        /*$this->pdfgenerator->generate($html,true,'perifericos');*/
        $this->pdfgenerator->generate($html, $filename, true, 'Letter', 'portrait');

    }

}
