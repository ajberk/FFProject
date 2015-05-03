FFProject.Views.Root = Backbone.View.extend({
  template: JST["positions/root"],

  render: function(){
    this.$el.html(this.template());
    return this;
  },
});
