
/*********************
 * category/index
 * tag/index
 *********************/
function showRowEdit(switcher) {
    dojo.query(switcher.parentNode).prev().children().at(0).style('display', 'none');
    dojo.query(switcher.parentNode).prev().children().at(1).style('display', 'block');
}
function hideRowEdit(switcher) {
    dojo.query(switcher.parentNode.parentNode.parentNode).style('display', 'none');
    dojo.query(switcher.parentNode.parentNode.parentNode).prev().style('display', 'block');
}
