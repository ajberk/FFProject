FFProject.Routers.Router = Backbone.Router.extend({

  initialize: function(options) {
    this.$rootEl = options.$rootEl
  },

  routes: {
    "": "root"
  },

  root: function() {
    var view = new FFProject.Views.Root({
      $rootEl: this.$rootEl
    })
    this.$rootEl.html(view.render().$el)
  }
});
