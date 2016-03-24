<?php
class ControllerCustomCompanyMobile extends Controller {
    public function index() {

        $data['company'] = $this->url->link('information/company');
        $data['blogs'] = $this->url->link('custom/blog');
        $data['news'] = $this->url->link('custom/news');
        $data['projects'] = $this->url->link('custom/projects');
        $data['certificates'] = $this->url->link('information/certificates');
        $data['services'] = $this->url->link('custom/services');
        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('Блоги'),
            'href' => $this->url->link('custom/blog')
        );

        $this->document->setTitle($this->config->get('config_meta_title'));
        $this->document->setDescription($this->config->get('config_meta_description'));
        $this->document->setKeywords($this->config->get('config_meta_keyword'));

        if (isset($this->request->get['route'])) {
            $this->document->addLink(HTTP_SERVER, 'canonical');
        }

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/custom/company_mobile.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/custom/company_mobile.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/custom/company_mobile.tpl', $data));
        }
    }
}