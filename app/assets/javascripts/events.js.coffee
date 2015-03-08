# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#timepicker').timepicker
    minuteStep: 5
    showInputs: false
    disableFocus: true
  $('#new_device').click ->
    $('#new_event').append '<select class="form-control" id="affected_device" name="event[affected_device]" style=""><option value="Socket 1">Socket 1</option></select>'
    $('#new_event').append '<select class="form-control" id="affected_device_status" name="event[affected_device_status]" style=""><option value="On">On</option><option value="Off">Off</option></select>'
    $('#new_device').hide();
    $('#create_event').removeClass 'disabled'
    return
  $('#add_time').click ->
    # $('.bootstrap-timepicker').show();
    $('#new_event').append '<input class="form-control" id="timepicker" name="event[time]" style="width: 88px;" type="text">'
    $('#add_time').hide();
    $('#create_event').removeClass 'disabled'
    return
  return

# <select class="form-control" id="affected_device" name="event[affected_device]" style=""><option value="Sensor 1">Sensor 1</option></select>
# <select class="form-control" id="affected_device_status" name="event[affected_device_status]" style=""><option value="On">On</option>
# <option value="Off">Off</option></select>

  # <!-- Affected Device -->
  # <%= e.select(:affected_device, options_from_collection_for_select(Device.all, "name", "name"), {}, {class: 'form-control', style: 'display: none', id:"affected_device"}) %>
  # <!-- Affected Device Status -->
  # <%= e.select(:affected_device_status, options_for_select([ "On", "Off" ]), {}, {class: 'form-control', style: 'display: none', id:"affected_device_status"}) %>