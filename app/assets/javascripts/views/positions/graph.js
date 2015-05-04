FFProject.Views.GraphView = Backbone.CompositeView.extend({
  template: JST["positions/graph"],

  initialize: function(options) {
    this.positions = options.collection
  },

  render: function(){
    this.$el.html(this.template({
      positions: this.positions
    }));
    return this;
  }
});
