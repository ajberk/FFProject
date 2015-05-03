FFProject.Routers.Router = Backbone.Router.extend({

  initialize: function(options) {
    this.$rootEl = options.$rootEl
  },
  routes: {
    "": "root"
  },

  root: function() {
    var view = new FFProject.Views.Root()
    this._swapView(view)
  },

  _swapView: function(view) {
    this._currentView && this._currentView.remove()
    this._currentView = view
    this.$rootEl.html(view.render().$el)
  }
});
