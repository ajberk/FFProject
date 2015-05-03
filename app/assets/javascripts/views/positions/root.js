FFProject.Views.Root = Backbone.CompositeView.extend({
  template: JST["positions/root"],

  initialize: function(options) {
    this.$rootEl = options.$rootEl
  },

  render: function(){
    this.$el.html(this.template());
    this.renderSearchForm()
    return this;
  },

  renderSearchForm: function() {
    var view = new FFProject.Views.SearchForm()
    this.addSubview('#search', view)
  },
});
