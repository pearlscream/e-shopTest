<?php
class ControllerProductSeries extends Controller {
    public function index() {
        $this->load->language('product/category');

        $this->load->model('catalog/category');

        $this->load->model('catalog/product');

        $this->load->model('tool/image');

        if (isset($this->request->get['filter'])) {
            $filter = $this->request->get['filter'];
        } else {
            $filter = '';
        }

        if (isset($this->request->get['sort'])) {
            $sort = $this->request->get['sort'];
        } else {
            $sort = 'p.sort_order';
        }

        if (isset($this->request->get['order'])) {
            $order = $this->request->get['order'];
        } else {
            $order = 'ASC';
        }

        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }

        if (isset($this->request->get['limit'])) {
            $limit = $this->request->get['limit'];
        } else {
            $limit = $this->config->get('config_product_limit');
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        if (isset($this->request->get['path'])) {
            $url = '';

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $path = '';

            $parts = explode('_', (string)$this->request->get['path']);

            $category_id = (int)array_pop($parts);

            foreach ($parts as $path_id) {
                if (!$path) {
                    $path = (int)$path_id;
                } else {
                    $path .= '_' . (int)$path_id;
                }

                $category_info = $this->model_catalog_category->getCategory($path_id);

                if ($category_info) {
                    $data['breadcrumbs'][] = array(
                        'text' => $category_info['name'],
                        'href' => $this->url->link('product/category', 'path=' . $path . $url)
                    );
                }
            }
        } else {
            $category_id = 0;
        }

        $category_info = $this->model_catalog_category->getCategory($category_id);

        if ($category_info) {
            $this->document->setTitle($category_info['meta_title']);
            $this->document->setDescription($category_info['meta_description']);
            $this->document->setKeywords($category_info['meta_keyword']);
            $this->document->addLink($this->url->link('product/category', 'path=' . $this->request->get['path']), 'canonical');

            $data['heading_title'] = $category_info['name'];

            $data['text_refine'] = $this->language->get('text_refine');
            $data['text_empty'] = $this->language->get('text_empty');
            $data['text_quantity'] = $this->language->get('text_quantity');
            $data['text_manufacturer'] = $this->language->get('text_manufacturer');
            $data['text_model'] = $this->language->get('text_model');
            $data['text_price'] = $this->language->get('text_price');
            $data['text_tax'] = $this->language->get('text_tax');
            $data['text_points'] = $this->language->get('text_points');
            $data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
            $data['text_sort'] = $this->language->get('text_sort');
            $data['text_limit'] = $this->language->get('text_limit');
            $data['text_related'] = $this->language->get('text_related');

            $data['button_cart'] = $this->language->get('button_cart');
            $data['button_wishlist'] = $this->language->get('button_wishlist');
            $data['button_compare'] = $this->language->get('button_compare');
            $data['button_continue'] = $this->language->get('button_continue');
            $data['button_list'] = $this->language->get('button_list');
            $data['button_grid'] = $this->language->get('button_grid');
            $data['button_choose'] = $this->language->get('button_choose');

            $data['tab_prod'] = $this->language->get('tab_prod');
            $data['tab_line'] = $this->language->get('tab_line');

            $data['lnk_prod'] = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url .'&lines=0');
            $data['lnk_line'] = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url);

            // Set the last category breadcrumb
            $data['breadcrumbs'][] = array(
                'text' => $category_info['name'],
                'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'])
            );

            if ($category_info['image']) {
                $data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
            } else {
                $data['thumb'] = '';
            }

            $data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
            $data['compare'] = $this->url->link('product/compare');

            $url = '';

            if (isset($this->request->get['filter'])) {
                $url .= '&filter=' . $this->request->get['filter'];
            }

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $data['categories'] = array();

            $results = $this->model_catalog_category->getCategories($category_id);

            foreach ($results as $result) {
                $filter_data = array(
                    'filter_category_id'  => $result['category_id'],
                    'filter_sub_category' => true
                );

                if ($result['image']) {
                    $image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                }
                else {
                    $image = $this->model_tool_image->resize('no_image.jpg', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                }

                $data['categories'][] = array(
                    'name'  => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
                    'thumb' => $image,
                    'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] . $url)
                );
            }

            $data['products'] = array();

            $data['products2'] = array();

            $filter_data = array(
                'filter_category_id' => $category_id,
                'filter_filter'      => $filter,
                'sort'               => $sort,
                'order'              => $order,
                'start'              => ($page - 1) * $limit,
                'limit'              => $limit
            );


            if(isset($this->request->get['lines'])) {
                $product_total = $this->model_catalog_product->getTotalProducts($filter_data);

                $results = $this->model_catalog_product->getProducts($filter_data);
                foreach ($results as $result) {
                    if ($result['image']) {
                        $image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    } else {
                        $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $price = false;
                    }

                    if ((float)$result['special']) {
                        $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
                    } else {
                        $tax = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $rating = (int)$result['rating'];
                    } else {
                        $rating = false;
                    }

//  ------------------------------- Custom filter begin ---------------------------------------------------------
                    $attribute_groups = $this->model_catalog_product->getProductAttributes($result['product_id']);

                    foreach ($attribute_groups as $group) {
                        foreach ($group['attribute'] as $attribute) {
                            if ($attribute['attribute_id'] == 12) {
                                $power = $attribute['text'];
                            }
                            if ($attribute['attribute_id'] == 13) {
                                $power_kwa = $attribute['text'];
                            }
                            if ($attribute['attribute_id'] == 15) {
                                $rpower = $attribute['text'];
                            }
                            if ($attribute['attribute_id'] == 16) {
                                $rpower_kwa = $attribute['text'];
                            }
                            if ($attribute['attribute_id'] == 20) {
                                $amperage = $attribute['text'];
                            }
                            if ($attribute['attribute_id'] == 21) {
                                $fuel = $attribute['text'];
                            }
                        }
                    }
                    if (isset($this->request->get['power']) || isset($this->request->get['rpower']) || isset($this->request->get['amperage'])) {

                        if (isset($this->request->get['power'])) {
                            $input_power = $this->request->get['power'];
                            $letter_power = substr($input_power, 0, 1);

                            if ($letter_power == 'a') $power = $power_kwa;
                            if ($letter_power == 't') $power = $power;

                            $input_power = substr($input_power, 1);
                            $data['input_power'] = $input_power;
                            $data['letter_power'] = $letter_power;
                        } else {
                            $input_power = 'no';
                        }

                        if (isset($this->request->get['rpower'])) {
                            $input_rpower = $this->request->get['rpower'];
                            $letter_rpower = substr($input_rpower, 0, 1);

                            if ($letter_rpower == 'a') $rpower = $rpower_kwa;
                            if ($letter_rpower == 't') $rpower = $rpower;

                            $input_rpower = substr($input_rpower, 1);
                            $data['input_rpower'] = $input_rpower;
                            $data['letter_rpower'] = $letter_rpower;
                        } else {
                            $input_rpower = 'no';
                        }

                        if (isset($this->request->get['amperage'])) {
                            $input_amperage = $this->request->get['amperage'];
                            $data['input_amperage'] = $input_amperage;
                        } else {
                            $input_amperage = 'no';
                        }

                        if (($power < $input_power || $power=='no') && ($rpower < $input_rpower || $rpower=='no') && ($amperage < $input_amperage || $input_amperage=='no')) {
                            $data['products'][] = array(
                                'product_id' => $result['product_id'],
                                'thumb' => $image,
                                'name' => $result['name'],
                                'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                                'price' => $price,
                                'special' => $special,
                                'tax' => $tax,
                                'minimum' => $result['minimum'] > 0 ? $result['minimum'] : 1,
                                'rating' => $result['rating'],
                                'power' => $power,
                                'href' => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
                            );
                        }

                    } else {
                        $data['products'][] = array(
                            'product_id' => $result['product_id'],
                            'thumb' => $image,
                            'name' => $result['name'],
                            'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                            'price' => $price,
                            'special' => $special,
                            'tax' => $tax,
                            'minimum' => $result['minimum'] > 0 ? $result['minimum'] : 1,
                            'rating' => $result['rating'],
                            'power' => $power,
                            'href' => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
                        );
                    }
                    //  ------------------------------- Custom filter end -------------------------------------------------------------
                } } else {
                // Линейки продуктов



                $product_total = $this->model_catalog_product->getTotalProductsL($filter_data);

                $results2 = $this->model_catalog_product->getProductsL($filter_data);
                // print_r($results2);
                foreach ($results2 as $result) {
                    if ($result['image']) {
                        $image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    } else {
                        $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                    }

                    if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $price = false;
                    }



                    if ((float)$result['special']) {
                        $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
                    } else {
                        $tax = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $rating = (int)$result['rating'];
                    } else {
                        $rating = false;
                    }

                    //Filter
                    $attribute_groups = $this->model_catalog_product->getProductAttributes($result['product_id']);

                    foreach ($attribute_groups as $group) {
                        foreach ($group['attribute'] as $attribute) {
                            if ($attribute['attribute_id'] == 12) {
                                $power = $attribute['text'];
                            }
                            if ($attribute['attribute_id'] == 13) {
                                $power_kwa = $attribute['text'];
                            }
                            if ($attribute['attribute_id'] == 15) {
                                $rpower = $attribute['text'];
                            }
                            if ($attribute['attribute_id'] == 16) {
                                $rpower_kwa = $attribute['text'];
                            }
                            if ($attribute['attribute_id'] == 20) {
                                $amperage = $attribute['text'];
                            }
                            if ($attribute['attribute_id'] == 21) {
                                $fuel = $attribute['text'];
                            }
                        }
                    }

                    //Filter

                    $line_name = $this->request->get['line_name'];
                    $data['products2'][] = array(
                        'line_name'    => $line_name,
                        'model'        => $result['model'],
                        'product_id'   => $result['product_id'],
                        'lines'        => $result['lines'],
                        'linedesc'     => $result['desc'],
                        'thumb'        => $image,
                        'power'        => $power,
                        'power_kwa'    => $power_kwa,
                        'rpower'   	   => $rpower,
                        'rpower_kwa'   => $rpower_kwa,
                        'amperage'     => $amperage	,
                        'fuel'         => $fuel,
                        'name'         => $result['name'],
                        'manufacturer' => $result['manufacturer'],
                        'description'  => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
                        'price'        => $price,
                        'special'      => $special,
                        'tax'          => $tax,
                        'minimum'      => $result['minimum'] > 0 ? $result['minimum'] : 1,
                        'rating'       => $result['rating'],
                        'href'         => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
                    );
                    // print_r($data['products2']);
                }
            }

            //Для сортировки
            global $order_gl;
            $order_gl = $order;
            $k = 0;
            while ($data['products2'][0]['lines'][$k] != null) {
                $k++;
            }

            $data['products2'][0]['lines'][$k] = $data['products2'][0];
            usort($data['products2'][0]['lines'], array($this, "cmp"));
            //Для сортировки


            $url = '';

            if (isset($this->request->get['filter'])) {
                $url .= '&filter=' . $this->request->get['filter'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            if (isset($this->request->get['power'])) {
                $url .= '&power=' . $this->request->get['power'];
            }

            if (isset($this->request->get['rpower'])) {
                $url .= '&rpower=' . $this->request->get['rpower'];
            }

            if (isset($this->request->get['amperage'])) {
                $url .= '&amperage=' . $this->request->get['amperage'];
            }

            if (isset($this->request->get['lines'])) {
                $url .= '&lines=' . $this->request->get['lines'];
            }

            $data['sorts'] = array();


            $data['sorts'][] = array(
                'text'  => $this->language->get('text_price_asc'),
                'value' => 'p.price-ASC',
                'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)
            );

            $data['sorts'][] = array(
                'text'  => $this->language->get('text_price_desc'),
                'value' => 'p.price-DESC',
                'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)
            );

            $url = '';

            if (isset($this->request->get['filter'])) {
                $url .= '&filter=' . $this->request->get['filter'];
            }

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            $data['limits'] = array();

            $limits = array_unique(array($this->config->get('config_product_limit'), 25, 50, 75, 100));

            sort($limits);

            foreach($limits as $value) {
                $data['limits'][] = array(
                    'text'  => $value,
                    'value' => $value,
                    'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $value)
                );
            }

            $url = '';

            if (isset($this->request->get['filter'])) {
                $url .= '&filter=' . $this->request->get['filter'];
            }

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $pagination = new Pagination();
            $pagination->total = $product_total;
            $pagination->page = $page;
            $pagination->limit = $limit;
            $pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');

            $data['pagination'] = $pagination->render();

            $data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

            $data['sort'] = $sort;
            $data['order'] = $order;
            $data['limit'] = $limit;

            $data['continue'] = $this->url->link('common/home');

            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/series.tpl')) {
                $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/series.tpl', $data));
            } else {
                $this->response->setOutput($this->load->view('default/template/product/series.tpl', $data));
            }
        } else {
            $url = '';

            if (isset($this->request->get['path'])) {
                $url .= '&path=' . $this->request->get['path'];
            }

            if (isset($this->request->get['filter'])) {
                $url .= '&filter=' . $this->request->get['filter'];
            }

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_error'),
                'href' => $this->url->link('product/category', $url)
            );

            $this->document->setTitle($this->language->get('text_error'));

            $data['heading_title'] = $this->language->get('text_error');

            $data['text_error'] = $this->language->get('text_error');

            $data['button_continue'] = $this->language->get('button_continue');

            $data['continue'] = $this->url->link('common/home');

            $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
                $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/error/not_found.tpl', $data));
            } else {
                $this->response->setOutput($this->load->view('default/template/error/not_found.tpl', $data));
            }
        }
    }

    function cmp($v1,$v2) {

        global $order_gl;
        $t1 = $v1;
        $t2 = $v2;
        $t1 = str_replace(chr(13),'',$t1);
        $t1 = str_replace(chr(10),'',$t1);
        $t2 = str_replace(chr(13),'',$t2);
        $t2 = str_replace(chr(10),'',$t2);

        if ($t1['power'] == $t2['power']) return 0;
        if ($order_gl == 'ASC')
            return ($t1['power'] < $t2['power'])? -1: 1;
        else return ($t1['power'] < $t2['power'])? 1: -	1;
    }
}