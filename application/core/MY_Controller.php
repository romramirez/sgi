<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
 * Extender el Core de Codeigniter, para crear un Controlador master.
 * @package     SGI
 * @subpackage  CORE
 * @category    Controller
 * @autor       romramirez
 * @author      Rommel Ramirez
 * @link        http://sgi.sti.com
 * @version     Current v1.0.0
 * @copyright   Copyright (c) 2020 SGI
 * @license     MIT 
 * @since       31/06/2020
 * 
 */

class MY_Controller extends CI_Controller {

    public $controlador;
    public $vista;
    public $url;
    public $titulo;
    
    public function __construct() {
        parent::__construct();
        $this->controlador = controlador();
        $this->titulo = humanize($this->controlador);
        
    }

}
