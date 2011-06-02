/*********************
 * category/index
 * tag/index
 *********************/
function toggleDisplay(idForHide, idForDisplay) {
  $("#" + idForHide).css('display','none');
  $("#" + idForDisplay).css('display','block');
}
