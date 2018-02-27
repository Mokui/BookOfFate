$(function()
{
  $("#form-pseudo button").attr("disabled", "disabled");
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
    html += "<li class='list-group-item list-group-item-action list-group-item-warning mt-1' value='"+liste[id]['idScenario']+"' onclick='charger_details_scenario(this)'>"+liste[id]['nomScenario']+"</li>";
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
  $("#image-scenario").html('<img src="'+scenario['imageScenario']+'" alt="image scenario"/>');
  $("#form-pseudo button").removeAttr("disabled");
}
