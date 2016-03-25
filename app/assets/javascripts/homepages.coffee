$(document).ready ->
  $("#top-users .top-users-page").infinitescroll
    navSelector: "nav.pagination"
    nextSelector: "nav.pagination a[rel=next]"
    itemSelector: "#top-users div.top-user"