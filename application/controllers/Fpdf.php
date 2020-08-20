<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

        /**
	 * Example: FPDF 
	 *
	 * Documentation: 
	 * http://www.fpdf.org/ > Maanual
	 *
	 */
class Fpdf extends CI_Controller {
	public function __construct() {
		parent::__construct();


	}

	public function index() {
		$this->load->library('fpdf_master');
		
		$this->fpdf->SetFont('Arial','B',18);
		
		$this->fpdf->Cell(50,10,'Hello World!');
		//All text which have to print should be goes here
		//also you can go for calling view over here and put the same type of code inside the view
		
		echo $this->fpdf->Output('hello_world.pdf','D');// Name of PDF file
		//Can change the type from D=Download the file		
	}

}
