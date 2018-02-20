$("#liste-scenario li").click(function()
{
  console.log($(this).attr("value"));
  $.ajax(
  {
    type : 'POST',
    url : baseurl+'index.php/Welcome/charger_details_scenario',
    data :
    {

    },
    datatype : 'json',
    success : function(data)
    {
      console.log(data);
    }
  })
});
