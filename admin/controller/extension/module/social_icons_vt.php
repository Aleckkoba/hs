<?php
class ControllerExtensionModuleSocialIconsVt extends Controller {

	public function index() {
		$this->load->language('extension/module/social_icons_vt');
        $this->load->model('setting/setting');
        if (($this->request->server['REQUEST_METHOD'] == 'POST')) {

            $soc['social_icons_vt'] = $this->request->post;
            $this->model_setting_setting->editSetting('social_icons_vt', $soc);
           $this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
        }


        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_extension'),
            'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('extension/module/social_icons_vt', 'token=' . $this->session->data['token'], true)
        );

        $data['action'] = $this->url->link('extension/module/social_icons_vt', 'token=' . $this->session->data['token'], true);

        $data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);

        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_url'] = $this->language->get('text_url');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
                
        $data['text_facebook_vt'] = $this->language->get('text_facebook_vt');
        $data['text_google_vt'] = $this->language->get('text_google_vt');
        $data['text_youtube_vt'] = $this->language->get('text_youtube_vt');
        $data['text_instagram_vt'] = $this->language->get('text_instagram_vt');
        $data['text_twitter_vt'] = $this->language->get('text_twitter_vt');
        $data['text_vk_vt'] = $this->language->get('text_vk_vt');

        $social_icons_vt = $this->model_setting_setting->getSetting('social_icons_vt') ? $this->model_setting_setting->getSetting('social_icons_vt')['social_icons_vt'] : $social_icons_vt = false;

        if(isset($social_icons_vt['facebook_vt'])){
            $data['facebook_vt'] = $social_icons_vt['facebook_vt'];
        }else {
            $data['facebook_vt'] = 'http://vt-studio.com';
        }
        if(isset($social_icons_vt['google_vt'])){
            $data['google_vt'] = $social_icons_vt['google_vt'];
        }else {
            $data['google_vt'] = 'http://vt-studio.com';
        }
        if(isset($social_icons_vt['youtube_vt'])){
            $data['youtube_vt'] = $social_icons_vt['youtube_vt'];
        }else {
            $data['youtube_vt'] = 'http://vt-studio.com';
        }
        if(isset($social_icons_vt['instagram_vt'])){
            $data['instagram_vt'] = $social_icons_vt['instagram_vt'];
        }else {
            $data['instagram_vt'] = 'http://vt-studio.com';
        }
        if(isset($social_icons_vt['twitter_vt'])){
            $data['twitter_vt'] = $social_icons_vt['twitter_vt'];
        }else {
            $data['twitter_vt'] = 'http://vt-studio.com';
        }
        if(isset($social_icons_vt['vk_vt'])){
            $data['vk_vt'] = $social_icons_vt['vk_vt'];
        }else {
            $data['vk_vt'] = 'http://vt-studio.com';
        }

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('extension/module/social_icons_vt', $data));
	}


}