FFProject.Views.SearchForm = Backbone.View.extend({
  template: JST["positions/search"],

  render: function(){
    this.$el.html(this.template());
    return this;
  },
});
