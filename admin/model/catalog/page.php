<?php
class ModelCatalogPage extends Model {
	public function addPage($data) {
		  
        $this->db->query("INSERT INTO " . DB_PREFIX . "page SET
                         url = '" . $this->db->escape($data['url']) . "',
                         sort_order = '" . (int)$data['sort_order'] . "',
                         status = '" . (int)$data['status'] . "'
                         ");

		$page_id = $this->db->getLastId();

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "page SET image = '" . $this->db->escape($data['image']) . "'
                             WHERE page_id = '" . (int)$page_id . "'");
		}

		foreach ($data['page_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "page_description SET
                             page_id = '" . (int)$page_id . "',
                             language_id = '" . (int)$language_id . "',
                             name = '" . $this->db->escape($value['name']) . "',
                             description = '" . $this->db->escape($value['description']) . "'
                                ");
		}

        /*
		if (isset($data['keyword'])) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'page_id=" . (int)$page_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
		*/

		$this->cache->delete('page');

		return $page_id;
	}

	public function editPage($page_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "page SET
                         url = '" . $this->db->escape($data['url']) . "',
                         sort_order = '" . (int)$data['sort_order'] . "',
                         status = '" . (int)$data['status'] . "'
                         WHERE page_id = '" . (int)$page_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "page SET image = '" . $this->db->escape($data['image']) . "' WHERE page_id = '" . (int)$page_id . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "page_description WHERE page_id = '" . (int)$page_id . "'");

		foreach ($data['page_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "page_description SET page_id = '" . (int)$page_id . "',
                             language_id = '" . (int)$language_id . "',
                             name = '" . $this->db->escape($value['name']) . "',
                             description = '" . $this->db->escape($value['description']) . "'
                             ");
		}

        /*
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'page_id=" . (int)$page_id . "'");

		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'page_id=" . (int)$page_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
		*/

		$this->cache->delete('page');
	}

	public function deletePage($page_id) {
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "page WHERE page_id = '" . (int)$page_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "page_description WHERE page_id = '" . (int)$page_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'page_id=" . (int)$page_id . "'");
		
		$this->cache->delete('page');
	}

	
	public function getPage($page_id) {
		$query = $this->db->query("SELECT DISTINCT *
                                  FROM " . DB_PREFIX . "page c
                                  LEFT JOIN " . DB_PREFIX . "page_description cd2 ON (c.page_id = cd2.page_id)
                                  WHERE c.page_id = '" . (int)$page_id . "' AND cd2.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		return $query->row;
	}

	public function getPages($data = array()) {
		
        $query = $this->db->query("SELECT DISTINCT *
                                  FROM " . DB_PREFIX . "page c
                                  LEFT JOIN " . DB_PREFIX . "page_description cd2 ON (c.page_id = cd2.page_id)
                                  WHERE cd2.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		
		return $query->rows;
	}

	public function getPageDescriptions($page_id) {
		$page_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "page_description WHERE page_id = '" . (int)$page_id . "'");

		foreach ($query->rows as $result) {
			$page_description_data[$result['language_id']] = array(
				'name'             => $result['name'],
				'description'      => $result['description']
			);
		}

		return $page_description_data;
	}
	

	public function getTotalPages() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "page");

		return $query->row['total'];
	}

}
