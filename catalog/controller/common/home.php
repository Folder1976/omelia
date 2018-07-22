<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}
	
		$data['comment'] = htmlspecialchars_decode($this->config->get('config_comment'), ENT_QUOTES);
	
		$this->load->model('extension/module');
		$this->load->model('design/layout');

		$data['modules'] = array();

		//$modules = $this->model_design_layout->getLayoutModules($layout_id, 'content_bottom');
		$modules = $this->model_design_layout->getLayoutModules(0, '');

		//Ид модулей которые подключаем
		$modules_id = array(28, 32, 33, 34);
		
		$data['language_id'] = (int)$this->config->get('config_language_id');
		
		$headers = array();
		//Укр
		$headers[3][28] = 'НОВИНКИ';
		$headers[3][33] = 'ХІТИ ПРОДАЖ';
		$headers[3][32] = 'ХІТИ ПРОДАЖ';
		$headers[3][34] = '';
		
		//Англ
		$headers[2][28] = 'Lates products';
		$headers[2][33] = 'Top sale';
		$headers[2][32] = 'Top sale';
		$headers[2][34] = '';

		
		foreach ($modules as $module) {
			$part = explode('.', $module['code']);

			if (isset($part[1]) AND in_array((int)$part[1], $modules_id)) {
				
				$setting_info = $this->model_extension_module->getModule($part[1], $data);
				$setting_info['heading_title'] = $headers[$data['language_id']][(int)$part[1]];
				$setting_info['module_id'] = (int)$part[1];
	
				if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
					$module_data = $this->load->controller('extension/module/' . $part[0]);
	
					if ($module_data) {
						$data['modules'][(int)$part[1]] = $module_data;
					}
				}
	
				if ($setting_info && $setting_info['status']) {
										
					$output = $this->load->controller('extension/module/' . $part[0], $setting_info);

					if ($output) {
						$data['modules'][(int)$part[1]] = $output;
					}
				}
			}
		}

		
		
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
	

		
		
		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
