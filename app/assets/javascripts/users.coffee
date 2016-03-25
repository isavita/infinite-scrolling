$(document).ready ->
  $("#items .items-page").infinitescroll
    navSelector: "nav.pagination"
    nextSelector: "nav.pagination a[rel=next]"
    itemSelector: "#items div.item"