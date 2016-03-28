<?php

class ControllerCommonFooter extends Controller
{
    public function index()
    {
        $this->load->language('common/footer');

        $this->load->model('catalog/record');

        $i = 0;
        $j = 0;
        foreach ($this->model_catalog_record->getServices() as $service) {
            if ($i % 3 == 0) {
                $data['service_content'][$j] = Array(
                    'name' => $service['name'],
                    'href' => $this->url->link('record/record') .'&record_id='. $service['record_id']
            );
                $j++;
            }
            $i++;
        }


        $data['text_information'] = $this->language->get('text_information');
        $data['text_service'] = $this->language->get('text_service');
        $data['text_extra'] = $this->language->get('text_extra');
        $data['text_contact'] = $this->language->get('text_contact');
        $data['text_return'] = $this->language->get('text_return');
        $data['text_sitemap'] = $this->language->get('text_sitemap');
        $data['text_manufacturer'] = $this->language->get('text_manufacturer');
        $data['text_voucher'] = $this->language->get('text_voucher');
        $data['text_affiliate'] = $this->language->get('text_affiliate');
        $data['text_special'] = $this->language->get('text_special');
        $data['text_account'] = $this->language->get('text_account');
        $data['text_order'] = $this->language->get('text_order');
        $data['text_wishlist'] = $this->language->get('text_wishlist');
        $data['text_newsletter'] = $this->language->get('text_newsletter');

        $this->load->model('catalog/information');
        $this->load->model('catalog/category');
        $categories = $this->model_catalog_category->getCategories(0);

        $data['company'] = $this->url->link('information/company');
        $data['blogs'] = $this->url->link('custom/blog');
        $data['news'] = $this->url->link('custom/news');
        $data['projects'] = $this->url->link('custom/projects');
        $data['certificates'] = $this->url->link('information/certificates');
        $data['services'] = $this->url->link('custom/services');

        foreach ($categories as $category) {
            if ($category['top']) {
                // Level 2
                $children_data = array();
                $category_pref = explode('_', $category['category_id']);
                $children = $this->model_catalog_category->getCategories($category['category_id']);

                foreach ($children as $child) {
                    $filter_data = array(
                        'filter_category_id' => $child['category_id'],
                        'filter_sub_category' => true
                    );


                    if ($child['image']) {
                        $image = $this->model_tool_image->resize($child['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
                    } else {
                        $image = '';
                    }
                    if ($category_pref[0] == 67) {
                        $href = $this->url->link('product/category1', 'path=' . $category['category_id'] . '_' . $child['category_id'] . '&lines=0');
                    } else {
                        $href = $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'] . '&lines=0');
                    }
                    $children_data[] = array(
                        'name' => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
                        'thumb' => $image,
                        'href' => $href
                    );
                }

                // Level 1

                if ($child['image']) {
                    $image = $this->model_tool_image->resize($child['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
                } else {
                    $image = '';
                }
                if ($category_pref[0] == 67) {
                    $href = $this->url->link('product/category1', 'path=' . $category['category_id'] . '&lines=0');
                } else {
                    $href = $this->url->link('product/category', 'path=' . $category['category_id'] . '&lines=0');
                }
                $data['categories'][] = array(
                    'thumb' => $image,
                    'name' => $category['name'],
                    'children' => $children_data,
                    'column' => $category['column'] ? $category['column'] : 1,
                    'href' => $href
                );
            }
        }

        $data['informations'] = array();

        foreach ($this->model_catalog_information->getInformations() as $result) {
            if ($result['bottom']) {
                $data['informations'][] = array(
                    'title' => $result['title'],
                    'href' => $this->url->link('information/information', 'information_id=' . $result['information_id'])
                );
            }
        }

        $data['contact'] = $this->url->link('information/contact');
        $data['return'] = $this->url->link('account/return/add', '', 'SSL');
        $data['sitemap'] = $this->url->link('information/sitemap');
        $data['manufacturer'] = $this->url->link('product/manufacturer');
        $data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
        $data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
        $data['special'] = $this->url->link('product/special');
        $data['account'] = $this->url->link('account/account', '', 'SSL');
        $data['order'] = $this->url->link('account/order', '', 'SSL');
        $data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
        $data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');

        $data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

        // Whos Online
        if ($this->config->get('config_customer_online')) {
            $this->load->model('tool/online');

            if (isset($this->request->server['REMOTE_ADDR'])) {
                $ip = $this->request->server['REMOTE_ADDR'];
            } else {
                $ip = '';
            }

            if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
                $url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
            } else {
                $url = '';
            }

            if (isset($this->request->server['HTTP_REFERER'])) {
                $referer = $this->request->server['HTTP_REFERER'];
            } else {
                $referer = '';
            }

            $this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
        }

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
        } else {
            return $this->load->view('default/template/common/footer.tpl', $data);
        }
    }
}