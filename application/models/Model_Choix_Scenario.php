<?php

  class Model_Choix_Scenario extends CI_Model
  {
    public function charger_liste_scenario()
    {
      $liste = $this->db->query('SELECT idScenario, nomScenario FROM g1_bookoffate.Scenario');
      return $liste;
    }

    public function charger_details_scenario($id)
    {
      $sql = 'SELECT * FROM g1_bookoffate.Scenario WHERE idScenario = ?';
      $details = $this->db->query($sql, array($id));
      return $details;
    }
  }

?>
