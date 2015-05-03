window.FFProject = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $("#content");
    new FFProject.Routers.Router({
      $rootEl: $rootEl
    })
    Backbone.history.start()
  }
};

$(document).ready(function(){
  FFProject.initialize();
});
