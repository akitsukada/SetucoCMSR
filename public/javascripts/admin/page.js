/*********************
 * page/new
 *********************/
$(document).ready(
  function() {
    if ($("textarea#admin_page_contents").size() > 0)
          $("textarea#admin_page_contents").cleditor();
  }
);

/*********************
 * page/index
 *********************/
function hideButtons(e) {
  $(e).closest("p").css('display', 'none');
}
