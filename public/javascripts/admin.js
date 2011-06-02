
/********************
 ** global functions
 *********************/
function hideNotice() {
  $('div.section > div.messageArea', 'div#mainContentInner').css('display', 'none');
}
function hideErrorMessageArea() {
  dojo.query('.errorMessageArea').style('display', 'none');
}
function confirmDeleteRedirect(url, item){
  if (confirm("「" + item + "」を本当に削除してよろしいですか？")) {
    location.href = url;
  }
}

/*********************
 * category/index
 * tag/index
 *********************/
function toggleDisplay(idForHide, idForDisplay) {
  $("#" + idForHide).css('display','none');
  $("#" + idForDisplay).css('display','block');
}


