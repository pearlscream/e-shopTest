<?php
class ControllerModuleProdline extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/prodline');

		$this->document->setTitle(strip_tags($this->language->get('heading_title')));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			// die(print_r($this->request->post, true));
			$this->model_setting_setting->editSetting('prodline', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = strip_tags($this->language->get('heading_title'));

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_status'] = $this->language->get('text_status');
		$data['text_user'] = $this->language->get('text_user');

		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_names'] = $this->language->get('entry_names');
		$data['entry_desc'] = $this->language->get('entry_desc');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');

		$data['entry_form'] = $this->language->get('entry_form');
		$data['entry_user_group'] = $this->language->get('entry_user_group');
		$data['entry_mail_title'] = $this->language->get('entry_mail_title');
		$data['entry_mail_text'] = $this->language->get('entry_mail_text');
		$data['entry_form_title'] = $this->language->get('entry_form_title');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_add'] = $this->language->get('button_add');
		$data['button_remove'] = $this->language->get('button_remove');

		$data['tab_status'] = $this->language->get('tab_status');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/prodline', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['action'] = $this->url->link('module/prodline', 'token=' . $this->session->data['token'], 'SSL');

		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->post['prodline_status'])) {
			$data['prodline_status'] = $this->request->post['prodline_status'];
		} else {
			$data['prodline_status'] = $this->config->get('prodline_status');
		}

		$this->load->model('localisation/language');

		$data['languages'] = $this->model_localisation_language->getLanguages();

		if (isset($this->request->post['prodline'])) {
			$data['prodline'] = $this->request->post['prodline'];
		} else {
			$data['prodline'] = $this->config->get('prodline');
		}

		if (isset($data['prodline'])) {
			$sort = array();
			foreach ($data['prodline'] as $key => $row){
				$sort[$key] = $row['sort_order'];
			}
			array_multisort($sort, SORT_ASC, $data['prodline']);
		}



		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/prodline.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/prodline')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}