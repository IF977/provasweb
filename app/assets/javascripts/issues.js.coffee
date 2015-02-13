# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
    $('#issue_subject_id').parent().hide()
    subjects = $('#issue_subject_id').html()
    $('#issue_discipline_id').change ->
        discipline = $('#issue_discipline_id :selected').text()
        escaped_discipline = discipline.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
        options = $(subjects).filter("optgroup[label='#{escaped_discipline}']").html()
        if options
            $('#issue_subject_id').html(options)
            $('#issue_subject_id').parent().show()
        else
            $('#issue_subject_id').empty()
            $('#issue_subject_id').parent().hide()