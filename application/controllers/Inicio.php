<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Controlador que permite gestionar los registro de usuarios del sistema
 *
 * @package         SGI
 * @subpackage      Inicio
 * @category        Controlador
 * @author          romramirez
 * @author          Rommel Ramirez
 * @link            http://sgi.sti.com/
 * @version         Current v1.0.0
 * @copyright       Copyright (c) 2020 SGI
 * @license         MIT
 * @since           31/06/2020
 */
class Inicio extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$ruta = 'dashboard/';
		$this->load->model($ruta . 'Solicitudes_model');
                $this->load->model($ruta . 'Computadoras_model');

	}

	public function index() {
		$data = array(
			'titulo' => 'Inicio ',
			'contenido' => 'inicio',

		);

		$this->load->view(THEME . TEMPLATE, $data);
	}

}
