<?php
class ModelCatalogPage extends Model {
	public function getPage($page_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "page c
                                  LEFT JOIN " . DB_PREFIX . "page_description cd ON (c.page_id = cd.page_id)
                                  WHERE c.page_id = '" . (int)$page_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "'
                                  AND c.status = '1'");

		return $query->row;
	}

	public function getPages() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "page c
                                  LEFT JOIN " . DB_PREFIX . "page_description cd ON (c.page_id = cd.page_id)
                                  WHERE cd.language_id = '" . (int)$this->config->get('config_language_id') . "'
                                  AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.name)");

		return $query->rows;
	}

}