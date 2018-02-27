$(function()
{
  charger_liste_scenario();
})

function charger_liste_scenario()
{
  $.ajax(
  {
    type : 'POST',
    url : baseurl+'index.php/Controller_Choix_Scenario/charger_liste_scenario',
    datatype : 'json',
    success : function(data)
    {
      data = $.parseJSON(data);
      console.log(data);
      afficher_liste_scenario(data);
    }
  })
}

function afficher_liste_scenario(liste)
{
  var html = "";

  $.each(liste, function(id, scenario)
  {
    html += "<li value='"+liste[id]['idScenario']+"' onclick='charger_details_scenario(this)'>"+liste[id]['nomScenario']+"</li>";
  });

  $("#liste-scenario > ul").html(html);
}

function charger_details_scenario(scenario)
{
  console.log(scenario.value);
  var id = scenario.value;

  $.ajax(
  {
    type : 'POST',
    url : baseurl+'index.php/Controller_Choix_Scenario/charger_details_scenario',
    data :
    {
      id_scenario : id
    },
    datatype : 'json',
    success : function(data)
    {
      data = $.parseJSON(data);
      console.log(data);
      afficher_details_scenario(data);
    }
  })
}

function afficher_details_scenario(scenario)
{
  $("#description-scenario").html(scenario['descriptionScenario']);
  $("#image-scenario").html('<img style="width:70%;" src="'+scenario['imageScenario']+'" alt="image scenario"/>');
}
