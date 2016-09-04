<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		$this->load->model('catalog/category');

		$category_info = $this->model_catalog_category->getCategory($path_id);

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');


		// TEST

		$categories = $this->model_catalog_category->getCategories(0);
		$data['categories'] = array();

		foreach ($categories as $category) {
			if ($category['top']) {
				$children = $this->model_catalog_category->getCategories($category['category_id']);
				foreach ($children as $child) {
					$child['description'] = str_replace('</p>',"",$child['description']);
					$href = $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'] . '&lines=0');
					$child['href'] = $href;
					array_push($data['categories'],$child);
				}
			}
		}

		 // TEST END

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}

		$this->load->model('catalog/category');
	}
}