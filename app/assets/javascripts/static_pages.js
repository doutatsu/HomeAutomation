$(document).ready(function() {
  // Switch styling
  $.fn.bootstrapSwitch.defaults.onColor = 'success';
  $.fn.bootstrapSwitch.defaults.offColor = 'danger';
  // Initialise Switch
  $("[name='my-checkbox']").bootstrapSwitch();
  // Switch controls
  $("input[name='my-checkbox']").on('switchChange.bootstrapSwitch', function(event, state) {
    if(state == true){
      $.ajax({
        url: "/devices/switch",
        type: "POST",
        data: { id: "1", status: "On" },
        dataType: "json"
      });
    }
    else
    {
      $.ajax({
        url: "/devices/switch",
        type: "POST",
        data: { id: "1", status: "Off" },
        dataType: "json"
      });
    }
  });
  // Draggable list
  var panelList = $('#draggablePanelList');
  panelList.sortable({
    // Only make the .panel-heading child elements support dragging.
    // Omit this to make the entire <li>...</li> draggable.
    // handle: '.panel-heading', 
    // update: function() {
    //   $('.panel', panelList).each(function(index, elem) {
    //      var $listItem = $(elem),
    //          newIndex = $listItem.index();

    //      // Persist the new indices.
    //   });
    // }
      update: function(e, ui) {
        var event_id, position;
        console.log(ui.item);
        event_id = ui.item.data('eventId');
        console.log(event_id);
        position = ui.item.index();
        return $.ajax({
          type: 'POST',
          url: '/events/update_row_order',
          dataType: 'json',
          data: {
            id: event_id,
            row_order_position: position
          }
        });
      }
  });
  // Create a group
  $('.fa-inbox').click(function() {
    return $('#events').append('<p>Kitchen</p>');
  });
});
