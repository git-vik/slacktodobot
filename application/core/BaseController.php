<?php defined('BASEPATH') OR exit('No direct script access allowed');
class BaseController extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->library("parser");
	}
	
	private $enquiries_module_name = 'enquiry'; // Sigular
	private $enquiries_module_name_p = 'enquiries'; // Plural

	public function loadview( $view = null, $data = null ){
		if( !is_null($view) ){
			$this->load->view("admin/common/header", $data);
			$this->load->view("admin/common/navbar", $data);
			$this->load->view("admin/common/sidebar", $data);
			$this->load->view($view, $data);
			$this->load->view("admin/common/footer", $data);
		}else{
			echo "View is null";
		}
	}


	public function makeHeader( $page = null ){
		if( is_null($page) ){
			return '';
		}
		switch ($page) {
			case 'enquiries_list':
				$data = array(
					"breadcrumbs" => array(
						array("url" => base_url("dashboard"), "label" => "Dashboard")
						),
					"active" => ucfirst($this->enquiries_module_name_p),
					'title' => ucfirst($this->enquiries_module_name_p),
					);
				return $this->getHeader($data);
				break;
		}
	}

	public function getHeader( $data = null ){
		if( !is_null($data) ){
			$data['breadcrumbs'] = $this->breadcrumbs->get("admin/common/admin_breadcrumbs_template", $data);
			return $this->load->view('admin/common/admin_header_template', $data, true);
		}else{
			return "";
		}
	}


	public function getAssets( $page = null ){
		if( is_null($page) ){
			return array();
		}
		switch ($page) {
			case 'enquiries_list':
				return array(
					'<link rel="stylesheet" href="' . base_url("assets/plugins/datatables/semantic/dataTables.semanticui.min.css") . '">',
					'<script src="' . base_url("assets/plugins/datatables/semantic/jquery.dataTables.min.js") . '" type="text/javascript" charset="utf-8"></script>',
					'<script src="' . base_url("assets/plugins/datatables/semantic/dataTables.semanticui.min.js") . '" type="text/javascript" charset="utf-8"></script>'
				);
				break;
		}
		
	}
	
}
?>