<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Controlador que permite gestionar los registro de usuarios del sistema
 *
 * @package         SGI
 * @subpackage      Admin
 * @category        Controlador
 * @author          romramirez
 * @author          Rommel Ramírez
 * @link            http://sgi.sti.com.ve/
 * @version         Current v0.1.0
 * @copyright       Copyright (c) 2017 SGI
 * @license         MIT
 * @since           31/06/2017
 */
class Login extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $ruta = 'admin/seguridad/';
        $this->vista = 'admin/seguridad/' . $this->controlador . '/';
        $this->load->model($ruta . 'Usuario_model');
    }

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     * 	- or -
     * 		http://example.com/index.php/welcome/index
     * 	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */
    public function index() {
        $DATA['titulo'] = 'Gestion de Sistemas';
        $DATA['descripcion'] = '';
        $DATA['contenido'] = $this->vista . 'index';
        $this->form_validation->set_rules('usuario', 'Usuario', 'trim|required|callback__verificar_usuario');
        $this->form_validation->set_rules('password', 'Contraseña', 'trim|required');
        $this->form_validation->set_message('_verificar_usuario', 'Usuario o Contraseña incorrecta');
        if ($this->form_validation->run()) {
            if ($this->seguridad->crearSession()) {
               
                if ($_SESSION['two_factor_permission'] !== '1') {
                    redirect($this->session->userdata('peticion_url'));
                    return;
                }
                $this->_second_auth($_SESSION['email']);            }
        } else {
           
            $this->load->view(THEME . TEMPLATELOGIN, $DATA);
        }
    }

    /*
     * Validar que el usuario y password Solicitados exista en la
     * Bases de datos         *
     */

    public function _verificar_usuario() {
        $passwordF = hash('sha256', sha1($this->input->post('password')));
        $query = $this->db
                ->where('usuario', $this->input->post('usuario'))
                ->where('password', $passwordF)
                ->where('estado', 1)
                ->get('usuario');
        if ($query->num_rows() > 0)
            return TRUE;
        return FALSE;
    }

    public function _second_auth($username) {
                  
        $ruta = 'admin/seguridad/login/';
        $this->vista = 'admin/seguridad/login/second_auth';
        /* VARIABLES PARA DINAMIZAR */
        /* $username = 'luim.villegass@gmail.com'; */
        // Personal Application Key
        $akey = "GiEhgYmXZLC0K2g3io7UVMLiynuFQ6nKcUZdfuDe";

        // Duo Integration Key
        $ikey = "DI517MQFB5H4KN2OSSYE";

        // Duo Secret Key
        $skey = "GiEhgYmXZLC0K2g3io7UVMLiynuFQ6nKcUZdfuDe";


        $DATA = array(
            'titulo' => $this->titulo,
            'descripcion' => "Duo Security Autenticador",
            'contenido' => 'admin/seguridad/login/second_auth',
            'avatar' => AVATAR_IMG . 'avatar.png',
            'host' => 'api-e5ced9d3.duosecurity.com',
            'post_action' =>base_URL() . "admin/login/process_second_auth",
            'sig_request' => $this->duo->signRequest($ikey, $skey, $akey, $username)
        );
        $this->load->view(THEME . TEMPLATELOGIN, $DATA);
    }

    public function process_second_auth() {

       // die();
        // Same keys used in _second_auth()
        $ikey = "DI517MQFB5H4KN2OSSYE";
        $skey = "GiEhgYmXZLC0K2g3io7UVMLiynuFQ6nKcUZdfuDe";
        $akey = "GiEhgYmXZLC0K2g3io7UVMLiynuFQ6nKcUZdfuDe";

        $sig_response = $this->input->post('sig_response');
        $username = $this->duo->verifyResponse($ikey, $skey, $akey, $sig_response);

         $this->load->view(THEME . TEMPLATELOGIN, $DATA);
    }

    /*
     * Permite salir del sistema
     *
     */

    public function salir() {
        $this->session->sess_destroy();
        redirect('admin/acceso/login');
    }

}
